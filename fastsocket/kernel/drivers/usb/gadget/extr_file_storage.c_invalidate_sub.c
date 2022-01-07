
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lun {struct file* filp; } ;
struct inode {int i_mapping; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int VLDBG (struct lun*,char*,unsigned long) ;
 unsigned long invalidate_mapping_pages (int ,int ,int) ;

__attribute__((used)) static void invalidate_sub(struct lun *curlun)
{
 struct file *filp = curlun->filp;
 struct inode *inode = filp->f_path.dentry->d_inode;
 unsigned long rc;

 rc = invalidate_mapping_pages(inode->i_mapping, 0, -1);
 VLDBG(curlun, "invalidate_inode_pages -> %ld\n", rc);
}
