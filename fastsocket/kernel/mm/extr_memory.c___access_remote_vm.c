
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_ops; } ;
struct task_struct {int dummy; } ;
struct page {int dummy; } ;
struct mm_struct {int mmap_sem; } ;
struct TYPE_2__ {int (* access ) (struct vm_area_struct*,unsigned long,void*,int,int) ;} ;


 int PAGE_SIZE ;
 int copy_from_user_page (struct vm_area_struct*,struct page*,unsigned long,void*,void*,int) ;
 int copy_to_user_page (struct vm_area_struct*,struct page*,unsigned long,void*,void*,int) ;
 int down_read (int *) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int get_user_pages (struct task_struct*,struct mm_struct*,unsigned long,int,int,int,struct page**,struct vm_area_struct**) ;
 void* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int page_cache_release (struct page*) ;
 int set_page_dirty_lock (struct page*) ;
 int stub1 (struct vm_area_struct*,unsigned long,void*,int,int) ;
 int up_read (int *) ;

__attribute__((used)) static int __access_remote_vm(struct task_struct *tsk, struct mm_struct *mm,
  unsigned long addr, void *buf, int len, int write)
{
 struct vm_area_struct *vma;
 void *old_buf = buf;

 down_read(&mm->mmap_sem);

 while (len) {
  int bytes, ret, offset;
  void *maddr;
  struct page *page = ((void*)0);

  ret = get_user_pages(tsk, mm, addr, 1,
    write, 1, &page, &vma);
  if (ret <= 0) {
    break;
   bytes = ret;
  } else {
   bytes = len;
   offset = addr & (PAGE_SIZE-1);
   if (bytes > PAGE_SIZE-offset)
    bytes = PAGE_SIZE-offset;

   maddr = kmap(page);
   if (write) {
    copy_to_user_page(vma, page, addr,
        maddr + offset, buf, bytes);
    set_page_dirty_lock(page);
   } else {
    copy_from_user_page(vma, page, addr,
          buf, maddr + offset, bytes);
   }
   kunmap(page);
   page_cache_release(page);
  }
  len -= bytes;
  buf += bytes;
  addr += bytes;
 }
 up_read(&mm->mmap_sem);

 return buf - old_buf;
}
