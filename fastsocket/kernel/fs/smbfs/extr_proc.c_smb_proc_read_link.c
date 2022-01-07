
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int dummy; } ;
struct smb_request {char* rq_buffer; int rq_ldata; int rq_lparm; char* rq_parm; int * rq_data; int rq_err; int rq_rcls; scalar_t__ rq_flags; int rq_trans2_command; } ;
struct dentry {int dummy; } ;


 int DEBUG1 (char*,char*,...) ;
 int DENTRY_PATH (struct dentry*) ;
 int DSET (char*,int,int ) ;
 int ENOMEM ;
 int PAGE_SIZE ;
 scalar_t__ SMB_MAXPATHLEN ;
 int SMB_QUERY_FILE_UNIX_LINK ;
 int TRANSACT2_QPATHINFO ;
 int WSET (char*,int ,int ) ;
 int smb_add_request (struct smb_request*) ;
 struct smb_request* smb_alloc_request (struct smb_sb_info*,int ) ;
 int smb_encode_path (struct smb_sb_info*,char*,scalar_t__,struct dentry*,int *) ;
 int smb_rput (struct smb_request*) ;
 int strncpy (char*,int *,int) ;

int
smb_proc_read_link(struct smb_sb_info *server, struct dentry *d,
     char *buffer, int len)
{
 char *p, *param;
 int result;
 struct smb_request *req;

 DEBUG1("readlink of %s/%s\n", DENTRY_PATH(d));

 result = -ENOMEM;
 if (! (req = smb_alloc_request(server, PAGE_SIZE)))
  goto out;
 param = req->rq_buffer;

 WSET(param, 0, SMB_QUERY_FILE_UNIX_LINK);
 DSET(param, 2, 0);
 result = smb_encode_path(server, param+6, SMB_MAXPATHLEN+1, d, ((void*)0));
 if (result < 0)
  goto out_free;
 p = param + 6 + result;

 req->rq_trans2_command = TRANSACT2_QPATHINFO;
 req->rq_ldata = 0;
 req->rq_data = ((void*)0);
 req->rq_lparm = p - param;
 req->rq_parm = param;
 req->rq_flags = 0;
 result = smb_add_request(req);
 if (result < 0)
  goto out_free;
 DEBUG1("for %s: result=%d, rcls=%d, err=%d\n",
  &param[6], result, req->rq_rcls, req->rq_err);


 result = len;
 if (req->rq_ldata < len)
  result = req->rq_ldata;
 strncpy(buffer, req->rq_data, result);

out_free:
 smb_rput(req);
out:
 return result;
}
