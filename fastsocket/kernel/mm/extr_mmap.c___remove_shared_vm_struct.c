
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int list; } ;
struct TYPE_7__ {TYPE_1__ vm_set; } ;
struct vm_area_struct {int vm_flags; TYPE_2__ shared; } ;
struct TYPE_10__ {TYPE_4__* dentry; } ;
struct file {TYPE_5__ f_path; } ;
struct address_space {int i_mmap; int i_mmap_writable; } ;
struct TYPE_9__ {TYPE_3__* d_inode; } ;
struct TYPE_8__ {int i_writecount; } ;


 int VM_DENYWRITE ;
 int VM_NONLINEAR ;
 int VM_SHARED ;
 int atomic_inc (int *) ;
 int flush_dcache_mmap_lock (struct address_space*) ;
 int flush_dcache_mmap_unlock (struct address_space*) ;
 int list_del_init (int *) ;
 scalar_t__ unlikely (int) ;
 int vma_prio_tree_remove (struct vm_area_struct*,int *) ;

__attribute__((used)) static void __remove_shared_vm_struct(struct vm_area_struct *vma,
  struct file *file, struct address_space *mapping)
{
 if (vma->vm_flags & VM_DENYWRITE)
  atomic_inc(&file->f_path.dentry->d_inode->i_writecount);
 if (vma->vm_flags & VM_SHARED)
  mapping->i_mmap_writable--;

 flush_dcache_mmap_lock(mapping);
 if (unlikely(vma->vm_flags & VM_NONLINEAR))
  list_del_init(&vma->shared.vm_set.list);
 else
  vma_prio_tree_remove(vma, &mapping->i_mmap);
 flush_dcache_mmap_unlock(mapping);
}
