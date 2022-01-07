
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; int i_sb; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {struct inode* d_inode; TYPE_1__ d_name; } ;


 int C_VATTR ;
 scalar_t__ S_ISDIR (int ) ;
 int coda_dir_drop_nlink (struct inode*) ;
 int coda_dir_inc_nlink (struct inode*) ;
 int coda_dir_update_mtime (struct inode*) ;
 int coda_flag_inode (struct inode*,int ) ;
 int coda_i2f (struct inode*) ;
 int lock_kernel () ;
 int unlock_kernel () ;
 int venus_rename (int ,int ,int ,int,int,char const*,char const*) ;

__attribute__((used)) static int coda_rename(struct inode *old_dir, struct dentry *old_dentry,
         struct inode *new_dir, struct dentry *new_dentry)
{
 const char *old_name = old_dentry->d_name.name;
 const char *new_name = new_dentry->d_name.name;
 int old_length = old_dentry->d_name.len;
 int new_length = new_dentry->d_name.len;
 int error;

 lock_kernel();

 error = venus_rename(old_dir->i_sb, coda_i2f(old_dir),
        coda_i2f(new_dir), old_length, new_length,
        (const char *) old_name, (const char *)new_name);

 if ( !error ) {
  if ( new_dentry->d_inode ) {
   if ( S_ISDIR(new_dentry->d_inode->i_mode) ) {
    coda_dir_drop_nlink(old_dir);
    coda_dir_inc_nlink(new_dir);
   }
   coda_dir_update_mtime(old_dir);
   coda_dir_update_mtime(new_dir);
   coda_flag_inode(new_dentry->d_inode, C_VATTR);
  } else {
   coda_flag_inode(old_dir, C_VATTR);
   coda_flag_inode(new_dir, C_VATTR);
  }
 }
 unlock_kernel();

 return error;
}
