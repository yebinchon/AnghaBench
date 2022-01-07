
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_fault {int pgoff; scalar_t__ virtual_address; } ;
struct vm_area_struct {int vm_flags; struct file* vm_file; } ;
struct page {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {TYPE_2__* a_ops; struct inode* host; } ;
typedef int pgoff_t ;
struct TYPE_4__ {int (* get_xip_mem ) (struct address_space*,int,int,void**,unsigned long*) ;} ;
struct TYPE_3__ {int s_flags; } ;


 int BUG_ON (int) ;
 int EBUSY ;
 int ENODATA ;
 int ENOMEM ;
 int MS_RDONLY ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_OOM ;
 int VM_FAULT_SIGBUS ;
 int VM_MAYSHARE ;
 int VM_MAYWRITE ;
 int VM_SHARED ;
 int VM_WRITE ;
 int __xip_unmap (struct address_space*,int) ;
 int i_size_read (struct inode*) ;
 scalar_t__ likely (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct address_space*,int,int,void**,unsigned long*) ;
 int stub2 (struct address_space*,int,int,void**,unsigned long*) ;
 int stub3 (struct address_space*,int,int,void**,unsigned long*) ;
 scalar_t__ unlikely (int) ;
 int vm_insert_mixed (struct vm_area_struct*,unsigned long,unsigned long) ;
 int vm_insert_page (struct vm_area_struct*,unsigned long,struct page*) ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;
 int xip_sparse_mutex ;
 struct page* xip_sparse_page () ;
 int xip_sparse_seq ;

__attribute__((used)) static int xip_file_fault(struct vm_area_struct *vma, struct vm_fault *vmf)
{
 struct file *file = vma->vm_file;
 struct address_space *mapping = file->f_mapping;
 struct inode *inode = mapping->host;
 pgoff_t size;
 void *xip_mem;
 unsigned long xip_pfn;
 struct page *page;
 int error;


again:
 size = (i_size_read(inode) + PAGE_CACHE_SIZE - 1) >> PAGE_CACHE_SHIFT;
 if (vmf->pgoff >= size)
  return VM_FAULT_SIGBUS;

 error = mapping->a_ops->get_xip_mem(mapping, vmf->pgoff, 0,
      &xip_mem, &xip_pfn);
 if (likely(!error))
  goto found;
 if (error != -ENODATA)
  return VM_FAULT_OOM;


 if ((vma->vm_flags & (VM_WRITE | VM_MAYWRITE)) &&
     (vma->vm_flags & (VM_SHARED | VM_MAYSHARE)) &&
     (!(mapping->host->i_sb->s_flags & MS_RDONLY))) {
  int err;


  mutex_lock(&xip_sparse_mutex);
  error = mapping->a_ops->get_xip_mem(mapping, vmf->pgoff, 1,
       &xip_mem, &xip_pfn);
  mutex_unlock(&xip_sparse_mutex);
  if (error)
   return VM_FAULT_SIGBUS;

  __xip_unmap(mapping, vmf->pgoff);

found:
  err = vm_insert_mixed(vma, (unsigned long)vmf->virtual_address,
       xip_pfn);
  if (err == -ENOMEM)
   return VM_FAULT_OOM;


  if (err != -EBUSY)
   BUG_ON(err);
  return VM_FAULT_NOPAGE;
 } else {
  int err, ret = VM_FAULT_OOM;

  mutex_lock(&xip_sparse_mutex);
  write_seqcount_begin(&xip_sparse_seq);
  error = mapping->a_ops->get_xip_mem(mapping, vmf->pgoff, 0,
       &xip_mem, &xip_pfn);
  if (unlikely(!error)) {
   write_seqcount_end(&xip_sparse_seq);
   mutex_unlock(&xip_sparse_mutex);
   goto again;
  }
  if (error != -ENODATA)
   goto out;

  page = xip_sparse_page();
  if (!page)
   goto out;
  err = vm_insert_page(vma, (unsigned long)vmf->virtual_address,
       page);
  if (err == -ENOMEM)
   goto out;

  ret = VM_FAULT_NOPAGE;
out:
  write_seqcount_end(&xip_sparse_seq);
  mutex_unlock(&xip_sparse_mutex);

  return ret;
 }
}
