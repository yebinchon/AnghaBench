
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int SMBrmdir ;
 int smb_proc_generic_command (struct dentry*,int ) ;

int
smb_proc_rmdir(struct dentry *dentry)
{
 return smb_proc_generic_command(dentry, SMBrmdir);
}
