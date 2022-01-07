
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_count; int i_sb; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;


 int EPERM ;
 int atomic_inc (int *) ;
 int coda_dir_update_mtime (struct inode*) ;
 int coda_i2f (struct inode*) ;
 scalar_t__ coda_iscontrol (char const*,int) ;
 scalar_t__ coda_isroot (struct inode*) ;
 int d_drop (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int inc_nlink (struct inode*) ;
 int lock_kernel () ;
 int unlock_kernel () ;
 int venus_link (int ,int ,int ,char const*,int) ;

__attribute__((used)) static int coda_link(struct dentry *source_de, struct inode *dir_inode,
   struct dentry *de)
{
 struct inode *inode = source_de->d_inode;
        const char * name = de->d_name.name;
 int len = de->d_name.len;
 int error;

 lock_kernel();

 if (coda_isroot(dir_inode) && coda_iscontrol(name, len)) {
  unlock_kernel();
  return -EPERM;
 }

 error = venus_link(dir_inode->i_sb, coda_i2f(inode),
      coda_i2f(dir_inode), (const char *)name, len);

 if (error) {
  d_drop(de);
  goto out;
 }

 coda_dir_update_mtime(dir_inode);
 atomic_inc(&inode->i_count);
 d_instantiate(de, inode);
 inc_nlink(inode);

out:
 unlock_kernel();
 return(error);
}
