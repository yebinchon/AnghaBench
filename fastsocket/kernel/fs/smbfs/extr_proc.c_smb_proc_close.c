
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int dummy; } ;
struct smb_request {int rq_flags; int rq_header; } ;
typedef int __u32 ;
typedef int __u16 ;


 int DSET (int ,int ,int ) ;
 int ENOMEM ;
 int SMB_REQ_NORETRY ;
 int SMBclose ;
 int WSET (int ,int ,int ) ;
 struct smb_request* smb_alloc_request (struct smb_sb_info*,int ) ;
 int smb_request_ok (struct smb_request*,int ,int ,int ) ;
 int smb_rput (struct smb_request*) ;
 int smb_setup_header (struct smb_request*,int ,int,int ) ;
 int smb_vwv0 ;
 int smb_vwv1 ;
 int utc2local (struct smb_sb_info*,int ) ;

__attribute__((used)) static int
smb_proc_close(struct smb_sb_info *server, __u16 fileid, __u32 mtime)
{
 struct smb_request *req;
 int result = -ENOMEM;

 if (! (req = smb_alloc_request(server, 0)))
  goto out;

 smb_setup_header(req, SMBclose, 3, 0);
 WSET(req->rq_header, smb_vwv0, fileid);
 DSET(req->rq_header, smb_vwv1, utc2local(server, mtime));
 req->rq_flags |= SMB_REQ_NORETRY;
 result = smb_request_ok(req, SMBclose, 0, 0);

 smb_rput(req);
out:
 return result;
}
