
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_sb_info {TYPE_1__* ops; } ;
struct smb_fattr {int attr; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* getattr ) (struct smb_sb_info*,struct dentry*,struct smb_fattr*) ;} ;


 int aRONLY ;
 int smb_finish_dirent (struct smb_sb_info*,struct smb_fattr*) ;
 int smb_init_dirent (struct smb_sb_info*,struct smb_fattr*) ;
 int smb_proc_setattr_core (struct smb_sb_info*,struct dentry*,int) ;
 int stub1 (struct smb_sb_info*,struct dentry*,struct smb_fattr*) ;

__attribute__((used)) static int
smb_set_rw(struct dentry *dentry,struct smb_sb_info *server)
{
 int result;
 struct smb_fattr fattr;




 smb_init_dirent(server, &fattr);
 result = server->ops->getattr(server, dentry, &fattr);
 smb_finish_dirent(server, &fattr);
 if (result < 0)
  return result;


 if (fattr.attr & aRONLY) {
  fattr.attr &= ~aRONLY;
  result = smb_proc_setattr_core(server, dentry, fattr.attr);
 }
 return result;
}
