
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vattr ;
struct inode {int i_sb; int i_ctime; } ;
struct iattr {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct coda_vattr {int va_type; } ;


 int CURRENT_TIME_SEC ;
 int C_VNON ;
 int coda_cache_clear_inode (struct inode*) ;
 int coda_i2f (struct inode*) ;
 int coda_iattr_to_vattr (struct iattr*,struct coda_vattr*) ;
 int coda_vattr_to_iattr (struct inode*,struct coda_vattr*) ;
 int lock_kernel () ;
 int memset (struct coda_vattr*,int ,int) ;
 int unlock_kernel () ;
 int venus_setattr (int ,int ,struct coda_vattr*) ;

int coda_setattr(struct dentry *de, struct iattr *iattr)
{
 struct inode *inode = de->d_inode;
 struct coda_vattr vattr;
 int error;

 lock_kernel();

 memset(&vattr, 0, sizeof(vattr));

 inode->i_ctime = CURRENT_TIME_SEC;
 coda_iattr_to_vattr(iattr, &vattr);
 vattr.va_type = C_VNON;


 error = venus_setattr(inode->i_sb, coda_i2f(inode), &vattr);

 if ( !error ) {
         coda_vattr_to_iattr(inode, &vattr);
  coda_cache_clear_inode(inode);
 }

 unlock_kernel();

 return error;
}
