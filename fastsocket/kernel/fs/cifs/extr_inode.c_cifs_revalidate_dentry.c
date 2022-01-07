
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {scalar_t__ invalid_mapping; } ;


 TYPE_1__* CIFS_I (struct inode*) ;
 int cifs_invalidate_mapping (struct inode*) ;
 int cifs_revalidate_dentry_attr (struct dentry*) ;

int cifs_revalidate_dentry(struct dentry *dentry)
{
 int rc;
 struct inode *inode = dentry->d_inode;

 rc = cifs_revalidate_dentry_attr(dentry);
 if (rc)
  return rc;

 if (CIFS_I(inode)->invalid_mapping)
  rc = cifs_invalidate_mapping(inode);
 return rc;
}
