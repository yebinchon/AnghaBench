
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int DEBUG1 (char*,char const*,int ) ;
 int DENTRY_PATH (struct dentry*) ;
 int server_from_dentry (struct dentry*) ;
 int smb_proc_symlink (int ,struct dentry*,char const*) ;

int smb_symlink(struct inode *inode, struct dentry *dentry, const char *oldname)
{
 DEBUG1("create symlink %s -> %s/%s\n", oldname, DENTRY_PATH(dentry));

 return smb_proc_symlink(server_from_dentry(dentry), dentry, oldname);
}
