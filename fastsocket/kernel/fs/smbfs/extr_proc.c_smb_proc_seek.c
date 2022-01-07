
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int dummy; } ;
struct smb_request {int rq_header; int rq_flags; } ;
typedef int off_t ;
typedef int __u16 ;


 int DSET (int ,int ,int ) ;
 int DVAL (int ,int ) ;
 int ENOMEM ;
 int SMB_REQ_NORETRY ;
 int SMBlseek ;
 int WSET (int ,int ,int ) ;
 struct smb_request* smb_alloc_request (struct smb_sb_info*,int ) ;
 int smb_request_ok (struct smb_request*,int ,int,int ) ;
 int smb_rput (struct smb_request*) ;
 int smb_setup_header (struct smb_request*,int ,int,int ) ;
 int smb_vwv0 ;
 int smb_vwv1 ;
 int smb_vwv2 ;

__attribute__((used)) static int
smb_proc_seek(struct smb_sb_info *server, __u16 fileid,
       __u16 mode, off_t offset)
{
 int result;
 struct smb_request *req;

 result = -ENOMEM;
 if (! (req = smb_alloc_request(server, 0)))
  goto out;

 smb_setup_header(req, SMBlseek, 4, 0);
 WSET(req->rq_header, smb_vwv0, fileid);
 WSET(req->rq_header, smb_vwv1, mode);
 DSET(req->rq_header, smb_vwv2, offset);
 req->rq_flags |= SMB_REQ_NORETRY;

 result = smb_request_ok(req, SMBlseek, 2, 0);
 if (result < 0) {
  result = 0;
  goto out_free;
 }

 result = DVAL(req->rq_header, smb_vwv0);
out_free:
 smb_rput(req);
out:
 return result;
}
