
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; unsigned int vm_flags; unsigned long vm_pgoff; struct file* vm_file; void* vm_page_prot; int anon_vma_chain; struct mm_struct* vm_mm; } ;
struct rb_node {int dummy; } ;
struct mm_struct {unsigned long total_vm; unsigned long locked_vm; } ;
struct inode {int i_writecount; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct file {TYPE_3__* f_op; TYPE_2__ f_path; } ;
struct TYPE_8__ {struct mm_struct* mm; } ;
struct TYPE_7__ {int (* mmap ) (struct file*,struct vm_area_struct*) ;} ;
struct TYPE_5__ {struct inode* d_inode; } ;


 int EINVAL ;
 unsigned long ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 unsigned long MAP_NONBLOCK ;
 unsigned long MAP_NORESERVE ;
 unsigned long MAP_POPULATE ;
 scalar_t__ OVERCOMMIT_NEVER ;
 unsigned long PAGE_SHIFT ;
 unsigned int VM_ACCOUNT ;
 unsigned int VM_DENYWRITE ;
 unsigned int VM_EXECUTABLE ;
 unsigned int VM_GROWSDOWN ;
 unsigned int VM_GROWSUP ;
 unsigned int VM_LOCKED ;
 unsigned int VM_NORESERVE ;
 unsigned int VM_SHARED ;
 scalar_t__ accountable_mapping (struct file*,unsigned int) ;
 int added_exe_file_vma (struct mm_struct*) ;
 int atomic_inc (int *) ;
 TYPE_4__* current ;
 int deny_write_access (struct file*) ;
 scalar_t__ do_munmap (struct mm_struct*,unsigned long,unsigned long) ;
 struct vm_area_struct* find_vma_prepare (struct mm_struct*,unsigned long,struct vm_area_struct**,struct rb_node***,struct rb_node**) ;
 int fput (struct file*) ;
 int get_file (struct file*) ;
 scalar_t__ is_file_hugepages (struct file*) ;
 int kmem_cache_free (int ,struct vm_area_struct*) ;
 struct vm_area_struct* kmem_cache_zalloc (int ,int ) ;
 int make_pages_present (unsigned long,unsigned long) ;
 int may_expand_vm (struct mm_struct*,unsigned long) ;
 long mlock_vma_pages_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 int perf_event_mmap (struct vm_area_struct*) ;
 scalar_t__ security_vm_enough_memory (unsigned long) ;
 int shmem_zero_setup (struct vm_area_struct*) ;
 int stub1 (struct file*,struct vm_area_struct*) ;
 scalar_t__ sysctl_overcommit_memory ;
 int unmap_region (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,unsigned long,unsigned long) ;
 int vm_area_cachep ;
 void* vm_get_page_prot (unsigned int) ;
 int vm_stat_account (struct mm_struct*,unsigned int,struct file*,unsigned long) ;
 int vm_unacct_memory (unsigned long) ;
 int vma_link (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,struct rb_node**,struct rb_node*) ;
 struct vm_area_struct* vma_merge (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,unsigned int,int *,struct file*,unsigned long,int *) ;
 scalar_t__ vma_wants_writenotify (struct vm_area_struct*) ;

unsigned long mmap_region(struct file *file, unsigned long addr,
     unsigned long len, unsigned long flags,
     unsigned int vm_flags, unsigned long pgoff)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma, *prev;
 int correct_wcount = 0;
 int error;
 struct rb_node **rb_link, *rb_parent;
 unsigned long charged = 0;
 struct inode *inode = file ? file->f_path.dentry->d_inode : ((void*)0);


 error = -ENOMEM;
munmap_back:
 vma = find_vma_prepare(mm, addr, &prev, &rb_link, &rb_parent);
 if (vma && vma->vm_start < addr + len) {
  if (do_munmap(mm, addr, len))
   return -ENOMEM;
  goto munmap_back;
 }


 if (!may_expand_vm(mm, len >> PAGE_SHIFT))
  return -ENOMEM;





 if ((flags & MAP_NORESERVE)) {

  if (sysctl_overcommit_memory != OVERCOMMIT_NEVER)
   vm_flags |= VM_NORESERVE;


  if (file && is_file_hugepages(file))
   vm_flags |= VM_NORESERVE;
 }




 if (accountable_mapping(file, vm_flags)) {
  charged = len >> PAGE_SHIFT;
  if (security_vm_enough_memory(charged))
   return -ENOMEM;
  vm_flags |= VM_ACCOUNT;
 }




 vma = vma_merge(mm, prev, addr, addr + len, vm_flags, ((void*)0), file, pgoff, ((void*)0));
 if (vma)
  goto out;






 vma = kmem_cache_zalloc(vm_area_cachep, GFP_KERNEL);
 if (!vma) {
  error = -ENOMEM;
  goto unacct_error;
 }

 vma->vm_mm = mm;
 vma->vm_start = addr;
 vma->vm_end = addr + len;
 vma->vm_flags = vm_flags;
 vma->vm_page_prot = vm_get_page_prot(vm_flags);
 vma->vm_pgoff = pgoff;
 INIT_LIST_HEAD(&vma->anon_vma_chain);

 if (file) {
  error = -EINVAL;
  if (vm_flags & (VM_GROWSDOWN|VM_GROWSUP))
   goto free_vma;
  if (vm_flags & VM_DENYWRITE) {
   error = deny_write_access(file);
   if (error)
    goto free_vma;
   correct_wcount = 1;
  }
  vma->vm_file = file;
  get_file(file);
  error = file->f_op->mmap(file, vma);
  if (error)
   goto unmap_and_free_vma;
  if (vm_flags & VM_EXECUTABLE)
   added_exe_file_vma(mm);






  addr = vma->vm_start;
  pgoff = vma->vm_pgoff;
  vm_flags = vma->vm_flags;
 } else if (vm_flags & VM_SHARED) {
  error = shmem_zero_setup(vma);
  if (error)
   goto free_vma;
 }

 if (vma_wants_writenotify(vma))
  vma->vm_page_prot = vm_get_page_prot(vm_flags & ~VM_SHARED);

 vma_link(mm, vma, prev, rb_link, rb_parent);
 file = vma->vm_file;


 if (correct_wcount)
  atomic_inc(&inode->i_writecount);
out:
 perf_event_mmap(vma);

 mm->total_vm += len >> PAGE_SHIFT;
 vm_stat_account(mm, vm_flags, file, len >> PAGE_SHIFT);
 if (vm_flags & VM_LOCKED) {



  long nr_pages = mlock_vma_pages_range(vma, addr, addr + len);
  if (nr_pages < 0)
   return nr_pages;
  mm->locked_vm += (len >> PAGE_SHIFT) - nr_pages;
 } else if ((flags & MAP_POPULATE) && !(flags & MAP_NONBLOCK))
  make_pages_present(addr, addr + len);
 return addr;

unmap_and_free_vma:
 if (correct_wcount)
  atomic_inc(&inode->i_writecount);
 vma->vm_file = ((void*)0);
 fput(file);


 unmap_region(mm, vma, prev, vma->vm_start, vma->vm_end);
 charged = 0;
free_vma:
 kmem_cache_free(vm_area_cachep, vma);
unacct_error:
 if (charged)
  vm_unacct_memory(charged);
 return error;
}
