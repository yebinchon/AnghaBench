
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct coda_vattr {int dummy; } ;
struct CodaFid {int dummy; } ;


 int EPERM ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int coda_dir_update_mtime (struct inode*) ;
 int coda_i2f (struct inode*) ;
 struct inode* coda_iget (int ,struct CodaFid*,struct coda_vattr*) ;
 scalar_t__ coda_iscontrol (char const*,int) ;
 scalar_t__ coda_isroot (struct inode*) ;
 int d_drop (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int lock_kernel () ;
 int unlock_kernel () ;
 int venus_create (int ,int ,char const*,int,int ,int,struct CodaFid*,struct coda_vattr*) ;

__attribute__((used)) static int coda_create(struct inode *dir, struct dentry *de, int mode, struct nameidata *nd)
{
        int error=0;
 const char *name=de->d_name.name;
 int length=de->d_name.len;
 struct inode *inode;
 struct CodaFid newfid;
 struct coda_vattr attrs;

 lock_kernel();

 if (coda_isroot(dir) && coda_iscontrol(name, length)) {
  unlock_kernel();
  return -EPERM;
 }

 error = venus_create(dir->i_sb, coda_i2f(dir), name, length,
    0, mode, &newfid, &attrs);

        if ( error ) {
  unlock_kernel();
  d_drop(de);
  return error;
 }

 inode = coda_iget(dir->i_sb, &newfid, &attrs);
 if ( IS_ERR(inode) ) {
  unlock_kernel();
  d_drop(de);
  return PTR_ERR(inode);
 }


 coda_dir_update_mtime(dir);
 unlock_kernel();
 d_instantiate(de, inode);
 return 0;
}
