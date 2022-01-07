
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct TYPE_3__ {char* name; int len; } ;
struct dentry {TYPE_2__* d_inode; TYPE_1__ d_name; } ;
struct TYPE_4__ {scalar_t__ i_nlink; } ;


 int coda_dir_drop_nlink (struct inode*) ;
 int coda_dir_update_mtime (struct inode*) ;
 int coda_i2f (struct inode*) ;
 int lock_kernel () ;
 int unlock_kernel () ;
 int venus_rmdir (int ,int ,char const*,int) ;

__attribute__((used)) static int coda_rmdir(struct inode *dir, struct dentry *de)
{
 const char *name = de->d_name.name;
 int len = de->d_name.len;
 int error;

 lock_kernel();

 error = venus_rmdir(dir->i_sb, coda_i2f(dir), name, len);
 if (!error) {

  if (de->d_inode)
      de->d_inode->i_nlink = 0;


  coda_dir_drop_nlink(dir);
  coda_dir_update_mtime(dir);
 }
 unlock_kernel();
 return error;
}
