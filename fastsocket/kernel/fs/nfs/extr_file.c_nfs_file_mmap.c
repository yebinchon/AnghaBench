
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vm_area_struct {int * vm_ops; } ;
struct inode {int dummy; } ;
struct TYPE_5__ {struct dentry* dentry; } ;
struct file {int f_mapping; TYPE_1__ f_path; } ;
struct TYPE_8__ {int name; } ;
struct dentry {TYPE_4__ d_name; TYPE_3__* d_parent; struct inode* d_inode; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_7__ {TYPE_2__ d_name; } ;


 int dprintk (char*,int ,int ) ;
 int generic_file_mmap (struct file*,struct vm_area_struct*) ;
 int nfs_file_vm_ops ;
 int nfs_revalidate_mapping (struct inode*,int ) ;

__attribute__((used)) static int
nfs_file_mmap(struct file * file, struct vm_area_struct * vma)
{
 struct dentry *dentry = file->f_path.dentry;
 struct inode *inode = dentry->d_inode;
 int status;

 dprintk("NFS: mmap(%s/%s)\n",
  dentry->d_parent->d_name.name, dentry->d_name.name);




 status = generic_file_mmap(file, vma);
 if (!status) {
  vma->vm_ops = &nfs_file_vm_ops;
  status = nfs_revalidate_mapping(inode, file->f_mapping);
 }
 return status;
}
