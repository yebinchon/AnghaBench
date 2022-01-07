
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {TYPE_2__* vm_file; } ;
struct hugepage_subpool {int dummy; } ;
struct TYPE_4__ {TYPE_1__* f_dentry; } ;
struct TYPE_3__ {int d_inode; } ;


 struct hugepage_subpool* subpool_inode (int ) ;

__attribute__((used)) static inline struct hugepage_subpool *subpool_vma(struct vm_area_struct *vma)
{
 return subpool_inode(vma->vm_file->f_dentry->d_inode);
}
