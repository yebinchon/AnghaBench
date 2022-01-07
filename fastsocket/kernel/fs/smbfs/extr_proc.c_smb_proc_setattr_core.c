
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int dummy; } ;
struct smb_request {int rq_bufsize; scalar_t__ rq_buffer; int rq_header; } ;
struct dentry {int dummy; } ;
typedef int __u16 ;


 int DSET (int ,int ,int ) ;
 int ENAMETOOLONG ;
 int ENOMEM ;
 int PAGE_SIZE ;
 int SMBsetatr ;
 int WSET (int ,int ,int ) ;
 struct smb_request* smb_alloc_request (struct smb_sb_info*,int ) ;
 int smb_request_ok (struct smb_request*,int ,int ,int ) ;
 int smb_rput (struct smb_request*) ;
 int smb_setup_bcc (struct smb_request*,char*) ;
 char* smb_setup_header (struct smb_request*,int ,int,int ) ;
 int smb_simple_encode_path (struct smb_request*,char**,struct dentry*,int *) ;
 int smb_vwv0 ;
 int smb_vwv1 ;
 int smb_vwv3 ;
 int smb_vwv4 ;
 int smb_vwv5 ;
 int smb_vwv6 ;
 int smb_vwv7 ;

__attribute__((used)) static int
smb_proc_setattr_core(struct smb_sb_info *server, struct dentry *dentry,
        __u16 attr)
{
 char *p;
 int result;
 struct smb_request *req;

 result = -ENOMEM;
 if (! (req = smb_alloc_request(server, PAGE_SIZE)))
  goto out;

 p = smb_setup_header(req, SMBsetatr, 8, 0);
 WSET(req->rq_header, smb_vwv0, attr);
 DSET(req->rq_header, smb_vwv1, 0);
 WSET(req->rq_header, smb_vwv3, 0);
 WSET(req->rq_header, smb_vwv4, 0);
 WSET(req->rq_header, smb_vwv5, 0);
 WSET(req->rq_header, smb_vwv6, 0);
 WSET(req->rq_header, smb_vwv7, 0);
 result = smb_simple_encode_path(req, &p, dentry, ((void*)0));
 if (result < 0)
  goto out_free;
 if (p + 2 > (char *)req->rq_buffer + req->rq_bufsize) {
  result = -ENAMETOOLONG;
  goto out_free;
 }
 *p++ = 4;
 *p++ = 0;
 smb_setup_bcc(req, p);

 result = smb_request_ok(req, SMBsetatr, 0, 0);
 if (result < 0)
  goto out_free;
 result = 0;

out_free:
 smb_rput(req);
out:
 return result;
}
