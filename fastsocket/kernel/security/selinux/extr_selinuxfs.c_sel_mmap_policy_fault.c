
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_fault {int flags; unsigned long pgoff; struct page* page; } ;
struct vm_area_struct {TYPE_1__* vm_file; } ;
struct policy_load_memory {scalar_t__ data; int len; } ;
struct page {int dummy; } ;
struct TYPE_2__ {struct policy_load_memory* private_data; } ;


 int FAULT_FLAG_MKWRITE ;
 int FAULT_FLAG_WRITE ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int VM_FAULT_SIGBUS ;
 int get_page (struct page*) ;
 unsigned long roundup (int ,int ) ;
 struct page* vmalloc_to_page (scalar_t__) ;

__attribute__((used)) static int sel_mmap_policy_fault(struct vm_area_struct *vma,
     struct vm_fault *vmf)
{
 struct policy_load_memory *plm = vma->vm_file->private_data;
 unsigned long offset;
 struct page *page;

 if (vmf->flags & (FAULT_FLAG_MKWRITE | FAULT_FLAG_WRITE))
  return VM_FAULT_SIGBUS;

 offset = vmf->pgoff << PAGE_SHIFT;
 if (offset >= roundup(plm->len, PAGE_SIZE))
  return VM_FAULT_SIGBUS;

 page = vmalloc_to_page(plm->data + offset);
 get_page(page);

 vmf->page = page;

 return 0;
}
