
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {int d_inode; TYPE_1__ d_name; } ;


 int coda_dir_update_mtime (struct inode*) ;
 int coda_i2f (struct inode*) ;
 int drop_nlink (int ) ;
 int lock_kernel () ;
 int unlock_kernel () ;
 int venus_remove (int ,int ,char const*,int) ;

__attribute__((used)) static int coda_unlink(struct inode *dir, struct dentry *de)
{
        int error;
 const char *name = de->d_name.name;
 int len = de->d_name.len;

 lock_kernel();

 error = venus_remove(dir->i_sb, coda_i2f(dir), name, len);
 if ( error ) {
  unlock_kernel();
  return error;
 }

 coda_dir_update_mtime(dir);
 drop_nlink(de->d_inode);
 unlock_kernel();
 return 0;
}
