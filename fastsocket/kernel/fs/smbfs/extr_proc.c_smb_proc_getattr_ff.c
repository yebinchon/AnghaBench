
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct smb_sb_info {int dummy; } ;
struct smb_request {char* rq_buffer; int rq_ldata; char* rq_data; int rq_lparm; char* rq_parm; scalar_t__ rq_rcls; int rq_err; scalar_t__ rq_flags; int rq_trans2_command; } ;
struct TYPE_6__ {void* tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_4__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct smb_fattr {int attr; int f_size; TYPE_3__ f_mtime; TYPE_2__ f_atime; TYPE_1__ f_ctime; } ;
struct dentry {int dummy; } ;
typedef int __u16 ;


 int DSET (char*,int,int ) ;
 int DVAL (char*,int) ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int PAGE_SIZE ;
 int PARANOIA (char*,char*,int,int) ;
 scalar_t__ SMB_MAXPATHLEN ;
 int TRANSACT2_FINDFIRST ;
 int VERBOSE (char*,char*,int,...) ;
 int WSET (char*,int,int) ;
 int WVAL (char*,int) ;
 int aDIR ;
 int aHIDDEN ;
 int aSYSTEM ;
 void* date_dos2unix (struct smb_sb_info*,int,int) ;
 int smb_add_request (struct smb_request*) ;
 struct smb_request* smb_alloc_request (struct smb_sb_info*,int ) ;
 int smb_encode_path (struct smb_sb_info*,char*,scalar_t__,struct dentry*,int *) ;
 int smb_errno (struct smb_request*) ;
 int smb_rput (struct smb_request*) ;

__attribute__((used)) static int
smb_proc_getattr_ff(struct smb_sb_info *server, struct dentry *dentry,
   struct smb_fattr *fattr)
{
 char *param, *mask;
 __u16 date, time;
 int mask_len, result;
 struct smb_request *req;

 result = -ENOMEM;
 if (! (req = smb_alloc_request(server, PAGE_SIZE)))
  goto out;
 param = req->rq_buffer;
 mask = param + 12;

 mask_len = smb_encode_path(server, mask, SMB_MAXPATHLEN+1, dentry,((void*)0));
 if (mask_len < 0) {
  result = mask_len;
  goto out_free;
 }
 VERBOSE("name=%s, len=%d\n", mask, mask_len);
 WSET(param, 0, aSYSTEM | aHIDDEN | aDIR);
 WSET(param, 2, 1);
 WSET(param, 4, 1);
 WSET(param, 6, 1);
 DSET(param, 8, 0);

 req->rq_trans2_command = TRANSACT2_FINDFIRST;
 req->rq_ldata = 0;
 req->rq_data = ((void*)0);
 req->rq_lparm = 12 + mask_len;
 req->rq_parm = param;
 req->rq_flags = 0;
 result = smb_add_request(req);
 if (result < 0)
  goto out_free;
 if (req->rq_rcls != 0) {
  result = smb_errno(req);





  goto out_free;
 }

 result = -EINVAL;
 if (req->rq_ldata < 22 || WVAL(req->rq_parm, 2) != 1) {
  PARANOIA("bad result for %s, len=%d, count=%d\n",
    mask, req->rq_ldata, WVAL(req->rq_parm, 2));
  goto out_free;
 }




 date = WVAL(req->rq_data, 0);
 time = WVAL(req->rq_data, 2);
 fattr->f_ctime.tv_sec = date_dos2unix(server, date, time);
 fattr->f_ctime.tv_nsec = 0;

 date = WVAL(req->rq_data, 4);
 time = WVAL(req->rq_data, 6);
 fattr->f_atime.tv_sec = date_dos2unix(server, date, time);
 fattr->f_atime.tv_nsec = 0;

 date = WVAL(req->rq_data, 8);
 time = WVAL(req->rq_data, 10);
 fattr->f_mtime.tv_sec = date_dos2unix(server, date, time);
 fattr->f_mtime.tv_nsec = 0;
 VERBOSE("name=%s, date=%x, time=%x, mtime=%ld\n",
  mask, date, time, fattr->f_mtime.tv_sec);
 fattr->f_size = DVAL(req->rq_data, 12);

 fattr->attr = WVAL(req->rq_data, 20);
 result = 0;

out_free:
 smb_rput(req);
out:
 return result;
}
