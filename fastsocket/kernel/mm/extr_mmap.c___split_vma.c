
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; unsigned long vm_pgoff; int vm_flags; scalar_t__ vm_file; TYPE_1__* vm_ops; int anon_vma_chain; } ;
struct mm_struct {int dummy; } ;
struct mempolicy {int dummy; } ;
struct TYPE_2__ {int (* close ) (struct vm_area_struct*) ;int (* open ) (struct vm_area_struct*) ;} ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct mempolicy*) ;
 unsigned long PAGE_SHIFT ;
 int PTR_ERR (struct mempolicy*) ;
 int VM_EXEC ;
 int VM_EXECUTABLE ;
 int added_exe_file_vma (struct mm_struct*) ;
 scalar_t__ anon_vma_clone (struct vm_area_struct*,struct vm_area_struct*) ;
 int arch_remove_exec_range (struct mm_struct*,unsigned long) ;
 int fput (scalar_t__) ;
 int get_file (scalar_t__) ;
 int hstate_vma (struct vm_area_struct*) ;
 unsigned long huge_page_mask (int ) ;
 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 struct vm_area_struct* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct vm_area_struct*) ;
 struct mempolicy* mpol_dup (int ) ;
 int mpol_put (struct mempolicy*) ;
 int removed_exe_file_vma (struct mm_struct*) ;
 int stub1 (struct vm_area_struct*) ;
 int stub2 (struct vm_area_struct*) ;
 int unlink_anon_vmas (struct vm_area_struct*) ;
 int vm_area_cachep ;
 int vma_adjust (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,struct vm_area_struct*) ;
 int vma_policy (struct vm_area_struct*) ;
 int vma_set_policy (struct vm_area_struct*,struct mempolicy*) ;

__attribute__((used)) static int __split_vma(struct mm_struct * mm, struct vm_area_struct * vma,
       unsigned long addr, int new_below)
{
 struct mempolicy *pol;
 struct vm_area_struct *new;
 int err = -ENOMEM;

 if (is_vm_hugetlb_page(vma) && (addr &
     ~(huge_page_mask(hstate_vma(vma)))))
  return -EINVAL;

 new = kmem_cache_alloc(vm_area_cachep, GFP_KERNEL);
 if (!new)
  goto out_err;


 *new = *vma;

 INIT_LIST_HEAD(&new->anon_vma_chain);

 if (new_below)
  new->vm_end = addr;
 else {
  new->vm_start = addr;
  new->vm_pgoff += ((addr - vma->vm_start) >> PAGE_SHIFT);
 }

 pol = mpol_dup(vma_policy(vma));
 if (IS_ERR(pol)) {
  err = PTR_ERR(pol);
  goto out_free_vma;
 }
 vma_set_policy(new, pol);

 if (anon_vma_clone(new, vma))
  goto out_free_mpol;

 if (new->vm_file) {
  get_file(new->vm_file);
  if (vma->vm_flags & VM_EXECUTABLE)
   added_exe_file_vma(mm);
 }

 if (new->vm_ops && new->vm_ops->open)
  new->vm_ops->open(new);

 if (new_below) {
  unsigned long old_end;

  old_end = vma->vm_end;
  err = vma_adjust(vma, addr, vma->vm_end, vma->vm_pgoff +
   ((addr - new->vm_start) >> PAGE_SHIFT), new);
  if (!err && vma->vm_flags & VM_EXEC)
   arch_remove_exec_range(mm, old_end);
 } else
  err = vma_adjust(vma, vma->vm_start, addr, vma->vm_pgoff, new);


 if (!err)
  return 0;


 if (new->vm_ops && new->vm_ops->close)
  new->vm_ops->close(new);
 if (new->vm_file) {
  if (vma->vm_flags & VM_EXECUTABLE)
   removed_exe_file_vma(mm);
  fput(new->vm_file);
 }
 unlink_anon_vmas(new);
 out_free_mpol:
 mpol_put(pol);
 out_free_vma:
 kmem_cache_free(vm_area_cachep, new);
 out_err:
 return err;
}
