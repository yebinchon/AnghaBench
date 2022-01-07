
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;


 int S_IFREG ;
 int mlog_entry (char*,struct inode*,struct dentry*,int,int ,int ) ;
 int mlog_exit (int) ;
 int ocfs2_mknod (struct inode*,struct dentry*,int,int ) ;

__attribute__((used)) static int ocfs2_create(struct inode *dir,
   struct dentry *dentry,
   int mode,
   struct nameidata *nd)
{
 int ret;

 mlog_entry("(0x%p, 0x%p, %d, '%.*s')\n", dir, dentry, mode,
     dentry->d_name.len, dentry->d_name.name);
 ret = ocfs2_mknod(dir, dentry, mode | S_IFREG, 0);
 mlog_exit(ret);

 return ret;
}
