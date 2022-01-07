
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_flags; unsigned long vm_start; unsigned long vm_end; int vm_file; int anon_vma; scalar_t__ vm_pgoff; struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef scalar_t__ pgoff_t ;


 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 unsigned long PAGE_SHIFT ;
 unsigned long VM_DONTCOPY ;
 int VM_IO ;
 unsigned long VM_NODUMP ;
 unsigned long VM_RAND_READ ;
 unsigned long VM_SEQ_READ ;
 int hugepage_madvise (unsigned long*,int) ;
 int ksm_madvise (struct vm_area_struct*,unsigned long,unsigned long,int,unsigned long*) ;
 int split_vma (struct mm_struct*,struct vm_area_struct*,unsigned long,int) ;
 struct vm_area_struct* vma_merge (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ,int ,scalar_t__,int ) ;
 int vma_policy (struct vm_area_struct*) ;

__attribute__((used)) static long madvise_behavior(struct vm_area_struct * vma,
       struct vm_area_struct **prev,
       unsigned long start, unsigned long end, int behavior)
{
 struct mm_struct * mm = vma->vm_mm;
 int error = 0;
 pgoff_t pgoff;
 unsigned long new_flags = vma->vm_flags;

 switch (behavior) {
 case 131:
  new_flags = new_flags & ~VM_RAND_READ & ~VM_SEQ_READ;
  break;
 case 129:
  new_flags = (new_flags & ~VM_RAND_READ) | VM_SEQ_READ;
  break;
 case 130:
  new_flags = (new_flags & ~VM_SEQ_READ) | VM_RAND_READ;
  break;
 case 135:
  new_flags |= VM_DONTCOPY;
  break;
 case 137:
  if (vma->vm_flags & VM_IO) {
   error = -EINVAL;
   goto out;
  }
  new_flags &= ~VM_DONTCOPY;
  break;
 case 136:
  new_flags |= VM_NODUMP;
  break;
 case 138:
  new_flags &= ~VM_NODUMP;
  break;
 case 133:
 case 128:
  error = ksm_madvise(vma, start, end, behavior, &new_flags);
  if (error)
   goto out;
  break;
 case 134:
 case 132:
  error = hugepage_madvise(&new_flags, behavior);
  if (error)
   goto out;
  break;
 }

 if (new_flags == vma->vm_flags) {
  *prev = vma;
  goto out;
 }

 pgoff = vma->vm_pgoff + ((start - vma->vm_start) >> PAGE_SHIFT);
 *prev = vma_merge(mm, *prev, start, end, new_flags, vma->anon_vma,
    vma->vm_file, pgoff, vma_policy(vma));
 if (*prev) {
  vma = *prev;
  goto success;
 }

 *prev = vma;

 if (start != vma->vm_start) {
  error = split_vma(mm, vma, start, 1);
  if (error)
   goto out;
 }

 if (end != vma->vm_end) {
  error = split_vma(mm, vma, end, 0);
  if (error)
   goto out;
 }

success:



 vma->vm_flags = new_flags;

out:
 if (error == -ENOMEM)
  error = -EAGAIN;
 return error;
}
