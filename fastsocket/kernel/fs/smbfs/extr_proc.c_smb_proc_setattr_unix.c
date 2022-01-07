
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct smb_sb_info {int dummy; } ;
struct smb_request {char* rq_buffer; int rq_ldata; char* rq_data; int rq_lparm; char* rq_parm; scalar_t__ rq_flags; int rq_trans2_command; } ;
struct iattr {int ia_valid; unsigned int ia_mode; unsigned int ia_size; unsigned int ia_uid; unsigned int ia_gid; int ia_mtime; int ia_atime; int ia_ctime; } ;
struct dentry {int dummy; } ;


 int ATTR_ATIME ;
 int ATTR_CTIME ;
 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_MTIME ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int DEBUG1 (char*,int) ;
 int DSET (char*,int,int ) ;
 int ENOMEM ;
 int LSET (char*,int,unsigned int) ;
 int PAGE_SIZE ;
 unsigned int SMB_GID_NO_CHANGE ;
 scalar_t__ SMB_MAXPATHLEN ;
 unsigned int SMB_MODE_NO_CHANGE ;
 int SMB_SET_FILE_UNIX_BASIC ;
 unsigned int SMB_SIZE_NO_CHANGE ;
 unsigned int SMB_TIME_NO_CHANGE ;
 unsigned int SMB_UID_NO_CHANGE ;
 int TRANSACT2_SETPATHINFO ;
 int WSET (char*,int ,int ) ;
 struct smb_sb_info* server_from_dentry (struct dentry*) ;
 int smb_add_request (struct smb_request*) ;
 struct smb_request* smb_alloc_request (struct smb_sb_info*,int ) ;
 int smb_encode_path (struct smb_sb_info*,char*,scalar_t__,struct dentry*,int *) ;
 int smb_filetype_from_mode (unsigned int) ;
 int smb_rput (struct smb_request*) ;
 unsigned int smb_unixutc2ntutc (int ) ;

int
smb_proc_setattr_unix(struct dentry *d, struct iattr *attr,
        unsigned int major, unsigned int minor)
{
 struct smb_sb_info *server = server_from_dentry(d);
 u64 nttime;
 char *p, *param;
 int result;
 char data[100];
 struct smb_request *req;

 result = -ENOMEM;
 if (! (req = smb_alloc_request(server, PAGE_SIZE)))
  goto out;
 param = req->rq_buffer;

 DEBUG1("valid flags = 0x%04x\n", attr->ia_valid);

 WSET(param, 0, SMB_SET_FILE_UNIX_BASIC);
 DSET(param, 2, 0);
 result = smb_encode_path(server, param+6, SMB_MAXPATHLEN+1, d, ((void*)0));
 if (result < 0)
  goto out_free;
 p = param + 6 + result;
 LSET(data, 0, SMB_SIZE_NO_CHANGE);
 LSET(data, 8, SMB_SIZE_NO_CHANGE);
 LSET(data, 16, SMB_TIME_NO_CHANGE);
 LSET(data, 24, SMB_TIME_NO_CHANGE);
 LSET(data, 32, SMB_TIME_NO_CHANGE);
 LSET(data, 40, SMB_UID_NO_CHANGE);
 LSET(data, 48, SMB_GID_NO_CHANGE);
 DSET(data, 56, smb_filetype_from_mode(attr->ia_mode));
 LSET(data, 60, major);
 LSET(data, 68, minor);
 LSET(data, 76, 0);
 LSET(data, 84, SMB_MODE_NO_CHANGE);
 LSET(data, 92, 0);

 if (attr->ia_valid & ATTR_SIZE) {
  LSET(data, 0, attr->ia_size);
  LSET(data, 8, 0);
 }







 if (attr->ia_valid & ATTR_CTIME) {
  nttime = smb_unixutc2ntutc(attr->ia_ctime);
  LSET(data, 16, nttime);
 }
 if (attr->ia_valid & ATTR_ATIME) {
  nttime = smb_unixutc2ntutc(attr->ia_atime);
  LSET(data, 24, nttime);
 }
 if (attr->ia_valid & ATTR_MTIME) {
  nttime = smb_unixutc2ntutc(attr->ia_mtime);
  LSET(data, 32, nttime);
 }

 if (attr->ia_valid & ATTR_UID) {
  LSET(data, 40, attr->ia_uid);
 }
 if (attr->ia_valid & ATTR_GID) {
  LSET(data, 48, attr->ia_gid);
 }

 if (attr->ia_valid & ATTR_MODE) {
  LSET(data, 84, attr->ia_mode);
 }

 req->rq_trans2_command = TRANSACT2_SETPATHINFO;
 req->rq_ldata = 100;
 req->rq_data = data;
 req->rq_lparm = p - param;
 req->rq_parm = param;
 req->rq_flags = 0;
 result = smb_add_request(req);

out_free:
 smb_rput(req);
out:
 return result;
}
