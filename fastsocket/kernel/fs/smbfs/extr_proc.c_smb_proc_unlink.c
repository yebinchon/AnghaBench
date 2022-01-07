
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int dummy; } ;
struct smb_request {scalar_t__ rq_flags; int rq_header; } ;
struct dentry {int dummy; } ;


 int EACCES ;
 int ENOMEM ;
 int PAGE_SIZE ;
 int SMBunlink ;
 int WSET (int ,int ,int) ;
 int aHIDDEN ;
 int aSYSTEM ;
 struct smb_sb_info* server_from_dentry (struct dentry*) ;
 struct smb_request* smb_alloc_request (struct smb_sb_info*,int ) ;
 int smb_request_ok (struct smb_request*,int ,int ,int ) ;
 int smb_rput (struct smb_request*) ;
 int smb_set_rw (struct dentry*,struct smb_sb_info*) ;
 int smb_setup_bcc (struct smb_request*,char*) ;
 char* smb_setup_header (struct smb_request*,int ,int,int ) ;
 int smb_simple_encode_path (struct smb_request*,char**,struct dentry*,int *) ;
 int smb_vwv0 ;

int
smb_proc_unlink(struct dentry *dentry)
{
 struct smb_sb_info *server = server_from_dentry(dentry);
 int flag = 0;
 char *p;
 int result;
 struct smb_request *req;

 result = -ENOMEM;
 if (! (req = smb_alloc_request(server, PAGE_SIZE)))
  goto out;

      retry:
 p = smb_setup_header(req, SMBunlink, 1, 0);
 WSET(req->rq_header, smb_vwv0, aSYSTEM | aHIDDEN);
 result = smb_simple_encode_path(req, &p, dentry, ((void*)0));
 if (result < 0)
  goto out_free;
 smb_setup_bcc(req, p);

 if ((result = smb_request_ok(req, SMBunlink, 0, 0)) < 0) {
  goto out_free;
 }
 result = 0;

out_free:
 smb_rput(req);
out:
 return result;
}
