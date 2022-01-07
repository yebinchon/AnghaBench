
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct inode {int * i_mapping; int i_data; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_3__* f_op; int f_mapping; TYPE_2__ f_path; } ;
struct coda_inode_info {int c_mapcount; } ;
struct coda_file_info {scalar_t__ cfi_magic; int cfi_mapcount; struct file* cfi_container; } ;
struct TYPE_6__ {int (* mmap ) (struct file*,struct vm_area_struct*) ;} ;
struct TYPE_4__ {struct inode* d_inode; } ;


 int BUG_ON (int) ;
 struct coda_file_info* CODA_FTOC (struct file*) ;
 scalar_t__ CODA_MAGIC ;
 int EBUSY ;
 int ENODEV ;
 struct coda_inode_info* ITOC (struct inode*) ;
 int stub1 (struct file*,struct vm_area_struct*) ;

__attribute__((used)) static int
coda_file_mmap(struct file *coda_file, struct vm_area_struct *vma)
{
 struct coda_file_info *cfi;
 struct coda_inode_info *cii;
 struct file *host_file;
 struct inode *coda_inode, *host_inode;

 cfi = CODA_FTOC(coda_file);
 BUG_ON(!cfi || cfi->cfi_magic != CODA_MAGIC);
 host_file = cfi->cfi_container;

 if (!host_file->f_op || !host_file->f_op->mmap)
  return -ENODEV;

 coda_inode = coda_file->f_path.dentry->d_inode;
 host_inode = host_file->f_path.dentry->d_inode;
 coda_file->f_mapping = host_file->f_mapping;
 if (coda_inode->i_mapping == &coda_inode->i_data)
  coda_inode->i_mapping = host_inode->i_mapping;



 else if (coda_inode->i_mapping != host_inode->i_mapping)
  return -EBUSY;


 cii = ITOC(coda_inode);
 cii->c_mapcount++;
 cfi->cfi_mapcount++;

 return host_file->f_op->mmap(host_file, vma);
}
