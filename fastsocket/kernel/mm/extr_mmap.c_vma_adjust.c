
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int vm_flags; scalar_t__ vm_truncate_count; long vm_pgoff; struct vm_area_struct* vm_next; struct anon_vma* anon_vma; struct file* vm_file; struct mm_struct* vm_mm; } ;
struct prio_tree_root {int dummy; } ;
struct mm_struct {int map_count; } ;
struct file {struct address_space* f_mapping; } ;
struct anon_vma {int dummy; } ;
struct address_space {int i_mmap_lock; struct prio_tree_root i_mmap; } ;
typedef long pgoff_t ;


 int ENOMEM ;
 unsigned long PAGE_SHIFT ;
 int VM_BUG_ON (int) ;
 int VM_EXECUTABLE ;
 int VM_NONLINEAR ;
 int __insert_vm_struct (struct mm_struct*,struct vm_area_struct*) ;
 int __remove_shared_vm_struct (struct vm_area_struct*,struct file*,struct address_space*) ;
 int __vma_link_file (struct vm_area_struct*) ;
 int __vma_unlink (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*) ;
 scalar_t__ anon_vma_clone (struct vm_area_struct*,struct vm_area_struct*) ;
 int anon_vma_lock (struct anon_vma*) ;
 int anon_vma_merge (struct vm_area_struct*,struct vm_area_struct*) ;
 int anon_vma_unlock (struct anon_vma*) ;
 int flush_dcache_mmap_lock (struct address_space*) ;
 int flush_dcache_mmap_unlock (struct address_space*) ;
 int fput (struct file*) ;
 int kmem_cache_free (int ,struct vm_area_struct*) ;
 int mpol_put (int ) ;
 int removed_exe_file_vma (struct mm_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int validate_mm (struct mm_struct*) ;
 int vm_area_cachep ;
 int vma_adjust_trans_huge (struct vm_area_struct*,unsigned long,unsigned long,long) ;
 int vma_policy (struct vm_area_struct*) ;
 int vma_prio_tree_insert (struct vm_area_struct*,struct prio_tree_root*) ;
 int vma_prio_tree_remove (struct vm_area_struct*,struct prio_tree_root*) ;

int vma_adjust(struct vm_area_struct *vma, unsigned long start,
 unsigned long end, pgoff_t pgoff, struct vm_area_struct *insert)
{
 struct mm_struct *mm = vma->vm_mm;
 struct vm_area_struct *next = vma->vm_next;
 struct vm_area_struct *importer = ((void*)0);
 struct address_space *mapping = ((void*)0);
 struct prio_tree_root *root = ((void*)0);
 struct anon_vma *anon_vma = ((void*)0);
 struct file *file = vma->vm_file;
 long adjust_next = 0;
 int remove_next = 0;

 if (next && !insert) {
  struct vm_area_struct *exporter = ((void*)0);

  if (end >= next->vm_end) {




again: remove_next = 1 + (end > next->vm_end);
   end = next->vm_end;
   exporter = next;
   importer = vma;
  } else if (end > next->vm_start) {




   adjust_next = (end - next->vm_start) >> PAGE_SHIFT;
   exporter = next;
   importer = vma;
  } else if (end < vma->vm_end) {





   adjust_next = - ((vma->vm_end - end) >> PAGE_SHIFT);
   exporter = vma;
   importer = next;
  }






  if (exporter && exporter->anon_vma && !importer->anon_vma) {
   if (anon_vma_clone(importer, exporter))
    return -ENOMEM;
   importer->anon_vma = exporter->anon_vma;
  }
 }

 if (file) {
  mapping = file->f_mapping;
  if (!(vma->vm_flags & VM_NONLINEAR))
   root = &mapping->i_mmap;
  spin_lock(&mapping->i_mmap_lock);
  if (importer &&
      vma->vm_truncate_count != next->vm_truncate_count) {




   importer->vm_truncate_count = 0;
  }
  if (insert) {
   insert->vm_truncate_count = vma->vm_truncate_count;






   __vma_link_file(insert);
  }
 }

 vma_adjust_trans_huge(vma, start, end, adjust_next);







 if (vma->anon_vma && (insert || importer || start != vma->vm_start)) {
  anon_vma = vma->anon_vma;
  VM_BUG_ON(adjust_next && next->anon_vma &&
     anon_vma != next->anon_vma);
 } else if (adjust_next && next->anon_vma)
  anon_vma = next->anon_vma;
 if (anon_vma)
  anon_vma_lock(anon_vma);

 if (root) {
  flush_dcache_mmap_lock(mapping);
  vma_prio_tree_remove(vma, root);
  if (adjust_next)
   vma_prio_tree_remove(next, root);
 }

 vma->vm_start = start;
 vma->vm_end = end;
 vma->vm_pgoff = pgoff;
 if (adjust_next) {
  next->vm_start += adjust_next << PAGE_SHIFT;
  next->vm_pgoff += adjust_next;
 }

 if (root) {
  if (adjust_next)
   vma_prio_tree_insert(next, root);
  vma_prio_tree_insert(vma, root);
  flush_dcache_mmap_unlock(mapping);
 }

 if (remove_next) {




  __vma_unlink(mm, next, vma);
  if (file)
   __remove_shared_vm_struct(next, file, mapping);
 } else if (insert) {





  __insert_vm_struct(mm, insert);
 }

 if (anon_vma)
  anon_vma_unlock(anon_vma);
 if (mapping)
  spin_unlock(&mapping->i_mmap_lock);

 if (remove_next) {
  if (file) {
   fput(file);
   if (next->vm_flags & VM_EXECUTABLE)
    removed_exe_file_vma(mm);
  }
  if (next->anon_vma)
   anon_vma_merge(vma, next);
  mm->map_count--;
  mpol_put(vma_policy(next));
  kmem_cache_free(vm_area_cachep, next);





  if (remove_next == 2) {
   next = vma->vm_next;
   goto again;
  }
 }

 validate_mm(mm);

 return 0;
}
