
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_sb_info {TYPE_1__* ops; } ;
struct smb_fattr {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* getattr ) (struct smb_sb_info*,struct dentry*,struct smb_fattr*) ;} ;


 struct smb_sb_info* server_from_dentry (struct dentry*) ;
 int smb_finish_dirent (struct smb_sb_info*,struct smb_fattr*) ;
 int smb_init_dirent (struct smb_sb_info*,struct smb_fattr*) ;
 int stub1 (struct smb_sb_info*,struct dentry*,struct smb_fattr*) ;

int
smb_proc_getattr(struct dentry *dir, struct smb_fattr *fattr)
{
 struct smb_sb_info *server = server_from_dentry(dir);
 int result;

 smb_init_dirent(server, fattr);
 result = server->ops->getattr(server, dir, fattr);
 smb_finish_dirent(server, fattr);

 return result;
}
