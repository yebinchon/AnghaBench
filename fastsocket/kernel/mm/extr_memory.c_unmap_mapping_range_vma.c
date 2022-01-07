
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zap_details {unsigned long truncate_count; int i_mmap_lock; } ;
struct vm_area_struct {unsigned long vm_truncate_count; } ;


 int EINTR ;
 int cond_resched () ;
 scalar_t__ is_restart_addr (unsigned long) ;
 scalar_t__ need_resched () ;
 int spin_lock (int ) ;
 scalar_t__ spin_needbreak (int ) ;
 int spin_unlock (int ) ;
 unsigned long zap_page_range (struct vm_area_struct*,unsigned long,unsigned long,struct zap_details*) ;

__attribute__((used)) static int unmap_mapping_range_vma(struct vm_area_struct *vma,
  unsigned long start_addr, unsigned long end_addr,
  struct zap_details *details)
{
 unsigned long restart_addr;
 int need_break;
again:
 restart_addr = vma->vm_truncate_count;
 if (is_restart_addr(restart_addr) && start_addr < restart_addr) {
  start_addr = restart_addr;
  if (start_addr >= end_addr) {

   vma->vm_truncate_count = details->truncate_count;
   return 0;
  }
 }

 restart_addr = zap_page_range(vma, start_addr,
     end_addr - start_addr, details);
 need_break = need_resched() || spin_needbreak(details->i_mmap_lock);

 if (restart_addr >= end_addr) {

  vma->vm_truncate_count = details->truncate_count;
  if (!need_break)
   return 0;
 } else {

  vma->vm_truncate_count = restart_addr;
  if (!need_break)
   goto again;
 }

 spin_unlock(details->i_mmap_lock);
 cond_resched();
 spin_lock(details->i_mmap_lock);
 return -EINTR;
}
