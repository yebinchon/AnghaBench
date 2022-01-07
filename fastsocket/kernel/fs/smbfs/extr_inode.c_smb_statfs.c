
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kstatfs {int f_namelen; int f_type; } ;
struct dentry {int dummy; } ;


 int SMB_MAXPATHLEN ;
 int SMB_SUPER_MAGIC ;
 int lock_kernel () ;
 int smb_proc_dskattr (struct dentry*,struct kstatfs*) ;
 int unlock_kernel () ;

__attribute__((used)) static int
smb_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 int result;

 lock_kernel();

 result = smb_proc_dskattr(dentry, buf);

 unlock_kernel();

 buf->f_type = SMB_SUPER_MAGIC;
 buf->f_namelen = SMB_MAXPATHLEN;
 return result;
}
