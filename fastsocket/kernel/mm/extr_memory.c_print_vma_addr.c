
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; struct file* vm_file; } ;
struct mm_struct {int mmap_sem; } ;
struct file {int f_path; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (char*) ;
 int PAGE_SIZE ;
 scalar_t__ __get_free_page (int ) ;
 TYPE_1__* current ;
 char* d_path (int *,char*,int ) ;
 int down_read (int *) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int free_page (unsigned long) ;
 scalar_t__ preempt_count () ;
 int printk (char*,char*,char*,scalar_t__,scalar_t__) ;
 char* strrchr (char*,char) ;
 int up_read (int *) ;

void print_vma_addr(char *prefix, unsigned long ip)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma;





 if (preempt_count())
  return;

 down_read(&mm->mmap_sem);
 vma = find_vma(mm, ip);
 if (vma && vma->vm_file) {
  struct file *f = vma->vm_file;
  char *buf = (char *)__get_free_page(GFP_KERNEL);
  if (buf) {
   char *p, *s;

   p = d_path(&f->f_path, buf, PAGE_SIZE);
   if (IS_ERR(p))
    p = "?";
   s = strrchr(p, '/');
   if (s)
    p = s+1;
   printk("%s%s[%lx+%lx]", prefix, p,
     vma->vm_start,
     vma->vm_end - vma->vm_start);
   free_page((unsigned long)buf);
  }
 }
 up_read(&current->mm->mmap_sem);
}
