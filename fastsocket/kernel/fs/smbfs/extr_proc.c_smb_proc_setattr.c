
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int dummy; } ;
struct smb_fattr {int attr; } ;
struct dentry {int d_inode; } ;


 int DENTRY_PATH (struct dentry*) ;
 int VERBOSE (char*,int ,int ) ;
 struct smb_sb_info* server_from_dentry (struct dentry*) ;
 int smb_is_open (int ) ;
 int smb_proc_setattr_core (struct smb_sb_info*,struct dentry*,int ) ;

int
smb_proc_setattr(struct dentry *dir, struct smb_fattr *fattr)
{
 struct smb_sb_info *server = server_from_dentry(dir);
 int result;

 VERBOSE("setting %s/%s, open=%d\n",
  DENTRY_PATH(dir), smb_is_open(dir->d_inode));
 result = smb_proc_setattr_core(server, dir, fattr->attr);
 return result;
}
