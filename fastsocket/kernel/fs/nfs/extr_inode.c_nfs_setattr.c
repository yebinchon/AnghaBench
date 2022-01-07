
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_fattr {int dummy; } ;
struct inode {int i_mode; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int (* setattr ) (struct dentry*,struct nfs_fattr*,struct iattr*) ;} ;


 int ATTR_FILE ;
 int ATTR_GID ;
 int ATTR_KILL_SGID ;
 int ATTR_KILL_SUID ;
 int ATTR_MODE ;
 int ATTR_OPEN ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int ENOMEM ;
 int NFSIOS_VFSSETATTR ;
 TYPE_1__* NFS_PROTO (struct inode*) ;
 int NFS_VALID_ATTRS ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 struct nfs_fattr* nfs_alloc_fattr () ;
 int nfs_free_fattr (struct nfs_fattr*) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int nfs_inode_return_delegation (struct inode*) ;
 int nfs_refresh_inode (struct inode*,struct nfs_fattr*) ;
 int nfs_wb_all (struct inode*) ;
 int stub1 (struct dentry*,struct nfs_fattr*,struct iattr*) ;

int
nfs_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = dentry->d_inode;
 struct nfs_fattr *fattr;
 int error = -ENOMEM;

 nfs_inc_stats(inode, NFSIOS_VFSSETATTR);


 if (attr->ia_valid & (ATTR_KILL_SUID | ATTR_KILL_SGID))
  attr->ia_valid &= ~ATTR_MODE;

 if (attr->ia_valid & ATTR_SIZE) {
  if (!S_ISREG(inode->i_mode) || attr->ia_size == i_size_read(inode))
   attr->ia_valid &= ~ATTR_SIZE;
 }


 attr->ia_valid &= NFS_VALID_ATTRS;
 if ((attr->ia_valid & ~(ATTR_FILE|ATTR_OPEN)) == 0)
  return 0;


 if (S_ISREG(inode->i_mode))
  nfs_wb_all(inode);

 fattr = nfs_alloc_fattr();
 if (fattr == ((void*)0))
  goto out;



 if ((attr->ia_valid & (ATTR_MODE|ATTR_UID|ATTR_GID)) != 0)
  nfs_inode_return_delegation(inode);
 error = NFS_PROTO(inode)->setattr(dentry, fattr, attr);
 if (error == 0)
  nfs_refresh_inode(inode, fattr);
 nfs_free_fattr(fattr);
out:
 return error;
}
