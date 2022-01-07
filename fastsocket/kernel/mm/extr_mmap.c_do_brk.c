
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; unsigned long vm_pgoff; unsigned long vm_flags; int vm_page_prot; struct mm_struct* vm_mm; int anon_vma_chain; } ;
struct rb_node {int dummy; } ;
struct mm_struct {unsigned long def_flags; scalar_t__ map_count; unsigned long total_vm; scalar_t__ locked_vm; } ;
typedef unsigned long pgoff_t ;
struct TYPE_6__ {TYPE_2__* signal; struct mm_struct* mm; } ;
struct TYPE_5__ {TYPE_1__* rlim; } ;
struct TYPE_4__ {unsigned long rlim_cur; } ;


 int CAP_IPC_LOCK ;
 unsigned long EAGAIN ;
 unsigned long ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MAP_FIXED ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 int PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 size_t RLIMIT_MEMLOCK ;
 unsigned long VM_ACCOUNT ;
 unsigned long VM_DATA_DEFAULT_FLAGS ;
 int VM_LOCKED ;
 int capable (int ) ;
 TYPE_3__* current ;
 scalar_t__ do_munmap (struct mm_struct*,unsigned long,unsigned long) ;
 struct vm_area_struct* find_vma_prepare (struct mm_struct*,unsigned long,struct vm_area_struct**,struct rb_node***,struct rb_node**) ;
 int get_unmapped_area (int *,unsigned long,unsigned long,int ,int ) ;
 struct vm_area_struct* kmem_cache_zalloc (int ,int ) ;
 int may_expand_vm (struct mm_struct*,unsigned long) ;
 int mlock_vma_pages_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 int perf_event_mmap (struct vm_area_struct*) ;
 int security_file_mmap (int *,int ,int ,int ,unsigned long,int) ;
 scalar_t__ security_vm_enough_memory (unsigned long) ;
 scalar_t__ sysctl_max_map_count ;
 int verify_mm_writelocked (struct mm_struct*) ;
 int vm_area_cachep ;
 int vm_get_page_prot (unsigned long) ;
 int vm_unacct_memory (unsigned long) ;
 int vma_link (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,struct rb_node**,struct rb_node*) ;
 struct vm_area_struct* vma_merge (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int *,int *,unsigned long,int *) ;

unsigned long do_brk(unsigned long addr, unsigned long len)
{
 struct mm_struct * mm = current->mm;
 struct vm_area_struct * vma, * prev;
 unsigned long flags;
 struct rb_node ** rb_link, * rb_parent;
 pgoff_t pgoff = addr >> PAGE_SHIFT;
 int error;

 len = PAGE_ALIGN(len);
 if (!len)
  return addr;

 error = security_file_mmap(((void*)0), 0, 0, 0, addr, 1);
 if (error)
  return error;

 flags = VM_DATA_DEFAULT_FLAGS | VM_ACCOUNT | mm->def_flags;

 error = get_unmapped_area(((void*)0), addr, len, 0, MAP_FIXED);
 if (error & ~PAGE_MASK)
  return error;




 if (mm->def_flags & VM_LOCKED) {
  unsigned long locked, lock_limit;
  locked = len >> PAGE_SHIFT;
  locked += mm->locked_vm;
  lock_limit = current->signal->rlim[RLIMIT_MEMLOCK].rlim_cur;
  lock_limit >>= PAGE_SHIFT;
  if (locked > lock_limit && !capable(CAP_IPC_LOCK))
   return -EAGAIN;
 }





 verify_mm_writelocked(mm);




 munmap_back:
 vma = find_vma_prepare(mm, addr, &prev, &rb_link, &rb_parent);
 if (vma && vma->vm_start < addr + len) {
  if (do_munmap(mm, addr, len))
   return -ENOMEM;
  goto munmap_back;
 }


 if (!may_expand_vm(mm, len >> PAGE_SHIFT))
  return -ENOMEM;

 if (mm->map_count > sysctl_max_map_count)
  return -ENOMEM;

 if (security_vm_enough_memory(len >> PAGE_SHIFT))
  return -ENOMEM;


 vma = vma_merge(mm, prev, addr, addr + len, flags,
     ((void*)0), ((void*)0), pgoff, ((void*)0));
 if (vma)
  goto out;




 vma = kmem_cache_zalloc(vm_area_cachep, GFP_KERNEL);
 if (!vma) {
  vm_unacct_memory(len >> PAGE_SHIFT);
  return -ENOMEM;
 }

 INIT_LIST_HEAD(&vma->anon_vma_chain);
 vma->vm_mm = mm;
 vma->vm_start = addr;
 vma->vm_end = addr + len;
 vma->vm_pgoff = pgoff;
 vma->vm_flags = flags;
 vma->vm_page_prot = vm_get_page_prot(flags);
 vma_link(mm, vma, prev, rb_link, rb_parent);
out:
 perf_event_mmap(vma);
 mm->total_vm += len >> PAGE_SHIFT;
 if (flags & VM_LOCKED) {
  if (!mlock_vma_pages_range(vma, addr, addr + len))
   mm->locked_vm += (len >> PAGE_SHIFT);
 }
 return addr;
}
