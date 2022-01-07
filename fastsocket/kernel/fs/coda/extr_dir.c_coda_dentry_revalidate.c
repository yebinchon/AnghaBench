
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int d_count; struct inode* d_inode; } ;
struct coda_inode_info {int c_flags; } ;


 int C_FLUSH ;
 int C_PURGE ;
 int C_VATTR ;
 struct coda_inode_info* ITOC (struct inode*) ;
 int atomic_read (int *) ;
 int coda_flag_inode_children (struct inode*,int) ;
 scalar_t__ coda_isroot (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int lock_kernel () ;
 int shrink_dcache_parent (struct dentry*) ;
 int unlock_kernel () ;

__attribute__((used)) static int coda_dentry_revalidate(struct dentry *de, struct nameidata *nd)
{
 struct inode *inode = de->d_inode;
 struct coda_inode_info *cii;

 if (!inode)
  return 1;
 lock_kernel();
 if (coda_isroot(inode))
  goto out;
 if (is_bad_inode(inode))
  goto bad;

 cii = ITOC(de->d_inode);
 if (!(cii->c_flags & (C_PURGE | C_FLUSH)))
  goto out;

 shrink_dcache_parent(de);


 if (cii->c_flags & C_FLUSH)
  coda_flag_inode_children(inode, C_FLUSH);

 if (atomic_read(&de->d_count) > 1)

  goto out;


 cii->c_flags &= ~(C_VATTR | C_PURGE | C_FLUSH);

bad:
 unlock_kernel();
 return 0;
out:
 unlock_kernel();
 return 1;
}
