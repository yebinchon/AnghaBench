
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smb_sb_info {TYPE_2__* ops; } ;
struct smb_cache_control {int dummy; } ;
struct TYPE_3__ {int dentry; } ;
struct file {TYPE_1__ f_path; } ;
typedef int filldir_t ;
struct TYPE_4__ {int (* readdir ) (struct file*,void*,int ,struct smb_cache_control*) ;} ;


 int EIO ;
 struct smb_sb_info* server_from_dentry (int ) ;
 scalar_t__ smb_proc_ops_wait (struct smb_sb_info*) ;
 int stub1 (struct file*,void*,int ,struct smb_cache_control*) ;

__attribute__((used)) static int
smb_proc_readdir_null(struct file *filp, void *dirent, filldir_t filldir,
        struct smb_cache_control *ctl)
{
 struct smb_sb_info *server = server_from_dentry(filp->f_path.dentry);

 if (smb_proc_ops_wait(server) < 0)
  return -EIO;

 return server->ops->readdir(filp, dirent, filldir, ctl);
}
