
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int dummy; } ;
struct smb_request {int dummy; } ;
struct dentry {int dummy; } ;
typedef int __u8 ;


 int ENOMEM ;
 int PAGE_SIZE ;
 struct smb_sb_info* server_from_dentry (struct dentry*) ;
 struct smb_request* smb_alloc_request (struct smb_sb_info*,int ) ;
 int smb_request_ok (struct smb_request*,int ,int ,int ) ;
 int smb_rput (struct smb_request*) ;
 int smb_setup_bcc (struct smb_request*,char*) ;
 char* smb_setup_header (struct smb_request*,int ,int ,int ) ;
 int smb_simple_encode_path (struct smb_request*,char**,struct dentry*,int *) ;

__attribute__((used)) static int
smb_proc_generic_command(struct dentry *dentry, __u8 command)
{
 struct smb_sb_info *server = server_from_dentry(dentry);
 char *p;
 int result;
 struct smb_request *req;

 result = -ENOMEM;
 if (! (req = smb_alloc_request(server, PAGE_SIZE)))
  goto out;

 p = smb_setup_header(req, command, 0, 0);
 result = smb_simple_encode_path(req, &p, dentry, ((void*)0));
 if (result < 0)
  goto out_free;
 smb_setup_bcc(req, p);

 result = smb_request_ok(req, command, 0, 0);
 if (result < 0)
  goto out_free;
 result = 0;

out_free:
 smb_rput(req);
out:
 return result;
}
