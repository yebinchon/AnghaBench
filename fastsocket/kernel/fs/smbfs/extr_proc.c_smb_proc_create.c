
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct smb_sb_info {int dummy; } ;
struct smb_request {int rq_header; } ;
struct dentry {int dummy; } ;
typedef int __u16 ;


 int DSET (int ,int ,int ) ;
 int ENOMEM ;
 int PAGE_SIZE ;
 int SMBcreate ;
 int WSET (int ,int ,int ) ;
 int WVAL (int ,int ) ;
 struct smb_sb_info* server_from_dentry (struct dentry*) ;
 struct smb_request* smb_alloc_request (struct smb_sb_info*,int ) ;
 int smb_request_ok (struct smb_request*,int ,int,int ) ;
 int smb_rput (struct smb_request*) ;
 int smb_setup_bcc (struct smb_request*,char*) ;
 char* smb_setup_header (struct smb_request*,int ,int,int ) ;
 int smb_simple_encode_path (struct smb_request*,char**,struct dentry*,int *) ;
 int smb_vwv0 ;
 int smb_vwv1 ;
 int utc2local (struct smb_sb_info*,int ) ;

int
smb_proc_create(struct dentry *dentry, __u16 attr, time_t ctime, __u16 *fileid)
{
 struct smb_sb_info *server = server_from_dentry(dentry);
 char *p;
 int result;
 struct smb_request *req;

 result = -ENOMEM;
 if (! (req = smb_alloc_request(server, PAGE_SIZE)))
  goto out;

 p = smb_setup_header(req, SMBcreate, 3, 0);
 WSET(req->rq_header, smb_vwv0, attr);
 DSET(req->rq_header, smb_vwv1, utc2local(server, ctime));
 result = smb_simple_encode_path(req, &p, dentry, ((void*)0));
 if (result < 0)
  goto out_free;
 smb_setup_bcc(req, p);

 result = smb_request_ok(req, SMBcreate, 1, 0);
 if (result < 0)
  goto out_free;

 *fileid = WVAL(req->rq_header, smb_vwv0);
 result = 0;

out_free:
 smb_rput(req);
out:
 return result;
}
