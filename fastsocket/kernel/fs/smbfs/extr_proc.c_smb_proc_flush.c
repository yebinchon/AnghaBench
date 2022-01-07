
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int dummy; } ;
struct smb_request {int rq_flags; int rq_header; } ;
typedef int __u16 ;


 int ENOMEM ;
 int SMB_REQ_NORETRY ;
 int SMBflush ;
 int WSET (int ,int ,int ) ;
 struct smb_request* smb_alloc_request (struct smb_sb_info*,int ) ;
 int smb_request_ok (struct smb_request*,int ,int ,int ) ;
 int smb_rput (struct smb_request*) ;
 int smb_setup_header (struct smb_request*,int ,int,int ) ;
 int smb_vwv0 ;

int
smb_proc_flush(struct smb_sb_info *server, __u16 fileid)
{
 int result;
 struct smb_request *req;

 result = -ENOMEM;
 if (! (req = smb_alloc_request(server, 0)))
  goto out;

 smb_setup_header(req, SMBflush, 1, 0);
 WSET(req->rq_header, smb_vwv0, fileid);
 req->rq_flags |= SMB_REQ_NORETRY;
 result = smb_request_ok(req, SMBflush, 0, 0);

 smb_rput(req);
out:
 return result;
}
