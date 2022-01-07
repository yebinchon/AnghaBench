
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; int vm_flags; scalar_t__ vm_pgoff; unsigned long vm_end; struct comedi_async* vm_private_data; int * vm_ops; } ;
struct file {TYPE_1__* f_dentry; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device_file_info {struct comedi_device* device; } ;
struct comedi_device {int mutex; int minor; int attached; } ;
struct comedi_async {unsigned long prealloc_bufsz; int mmap_count; TYPE_2__* buf_page_list; } ;
struct TYPE_4__ {int virt_addr; } ;
struct TYPE_3__ {int d_inode; } ;


 int DPRINTK (char*,...) ;
 int EAGAIN ;
 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 unsigned long PAGE_MASK ;
 int PAGE_SHARED ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int VM_WRITE ;
 struct comedi_device_file_info* comedi_get_device_file_info (unsigned int const) ;
 struct comedi_subdevice* comedi_get_read_subdevice (struct comedi_device_file_info*) ;
 struct comedi_subdevice* comedi_get_write_subdevice (struct comedi_device_file_info*) ;
 int comedi_vm_ops ;
 unsigned int iminor (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int page_to_pfn (int ) ;
 scalar_t__ remap_pfn_range (struct vm_area_struct*,unsigned long,int ,scalar_t__,int ) ;
 int virt_to_page (int ) ;

__attribute__((used)) static int comedi_mmap(struct file *file, struct vm_area_struct *vma)
{
 const unsigned minor = iminor(file->f_dentry->d_inode);
 struct comedi_device_file_info *dev_file_info =
     comedi_get_device_file_info(minor);
 struct comedi_device *dev = dev_file_info->device;
 struct comedi_async *async = ((void*)0);
 unsigned long start = vma->vm_start;
 unsigned long size;
 int n_pages;
 int i;
 int retval;
 struct comedi_subdevice *s;

 mutex_lock(&dev->mutex);
 if (!dev->attached) {
  DPRINTK("no driver configured on comedi%i\n", dev->minor);
  retval = -ENODEV;
  goto done;
 }
 if (vma->vm_flags & VM_WRITE)
  s = comedi_get_write_subdevice(dev_file_info);
 else
  s = comedi_get_read_subdevice(dev_file_info);

 if (s == ((void*)0)) {
  retval = -EINVAL;
  goto done;
 }
 async = s->async;
 if (async == ((void*)0)) {
  retval = -EINVAL;
  goto done;
 }

 if (vma->vm_pgoff != 0) {
  DPRINTK("comedi: mmap() offset must be 0.\n");
  retval = -EINVAL;
  goto done;
 }

 size = vma->vm_end - vma->vm_start;
 if (size > async->prealloc_bufsz) {
  retval = -EFAULT;
  goto done;
 }
 if (size & (~PAGE_MASK)) {
  retval = -EFAULT;
  goto done;
 }

 n_pages = size >> PAGE_SHIFT;
 for (i = 0; i < n_pages; ++i) {
  if (remap_pfn_range(vma, start,
        page_to_pfn(virt_to_page
      (async->buf_page_list
       [i].virt_addr)), PAGE_SIZE,
        PAGE_SHARED)) {
   retval = -EAGAIN;
   goto done;
  }
  start += PAGE_SIZE;
 }

 vma->vm_ops = &comedi_vm_ops;
 vma->vm_private_data = async;

 async->mmap_count++;

 retval = 0;
done:
 mutex_unlock(&dev->mutex);
 return retval;
}
