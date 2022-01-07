
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int dummy; } ;
struct smb_request {char* rq_buffer; int rq_ldata; int rq_lparm; char* rq_parm; int rq_err; int rq_rcls; scalar_t__ rq_flags; int * rq_data; int rq_trans2_command; } ;
struct dentry {int dummy; } ;


 int DSET (char*,int,int ) ;
 int ENOENT ;
 int PARANOIA (char*,char*,int) ;
 scalar_t__ SMB_MAXPATHLEN ;
 int TRANSACT2_QPATHINFO ;
 int VERBOSE (char*,char*,int,int ,int ) ;
 int WSET (char*,int ,int) ;
 int smb_add_request (struct smb_request*) ;
 int smb_encode_path (struct smb_sb_info*,char*,scalar_t__,struct dentry*,int *) ;
 int smb_errno (struct smb_request*) ;

__attribute__((used)) static int
smb_proc_getattr_trans2(struct smb_sb_info *server, struct dentry *dir,
   struct smb_request *req, int infolevel)
{
 char *p, *param;
 int result;

 param = req->rq_buffer;
 WSET(param, 0, infolevel);
 DSET(param, 2, 0);
 result = smb_encode_path(server, param+6, SMB_MAXPATHLEN+1, dir, ((void*)0));
 if (result < 0)
  goto out;
 p = param + 6 + result;

 req->rq_trans2_command = TRANSACT2_QPATHINFO;
 req->rq_ldata = 0;
 req->rq_data = ((void*)0);
 req->rq_lparm = p - param;
 req->rq_parm = param;
 req->rq_flags = 0;
 result = smb_add_request(req);
 if (result < 0)
  goto out;
 if (req->rq_rcls != 0) {
  VERBOSE("for %s: result=%d, rcls=%d, err=%d\n",
   &param[6], result, req->rq_rcls, req->rq_err);
  result = smb_errno(req);
  goto out;
 }
 result = -ENOENT;
 if (req->rq_ldata < 22) {
  PARANOIA("not enough data for %s, len=%d\n",
    &param[6], req->rq_ldata);
  goto out;
 }

 result = 0;
out:
 return result;
}
