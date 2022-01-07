
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_6__ {scalar_t__ invalid_mapping; } ;
struct TYPE_4__ {struct inode* d_inode; } ;


 TYPE_3__* CIFS_I (struct inode*) ;
 int cifs_invalidate_mapping (struct inode*) ;
 int cifs_revalidate_file_attr (struct file*) ;

int cifs_revalidate_file(struct file *filp)
{
 int rc;
 struct inode *inode = filp->f_path.dentry->d_inode;

 rc = cifs_revalidate_file_attr(filp);
 if (rc)
  return rc;

 if (CIFS_I(inode)->invalid_mapping)
  rc = cifs_invalidate_mapping(inode);
 return rc;
}
