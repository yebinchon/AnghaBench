
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; scalar_t__ vm_end; scalar_t__ vm_start; unsigned int vm_pgoff; TYPE_2__* vm_private_data; int * vm_ops; } ;
struct go7007_file {unsigned int buf_count; int lock; TYPE_2__* bufs; TYPE_1__* go; } ;
struct file {struct go7007_file* private_data; } ;
struct TYPE_4__ {int mapped; scalar_t__ user_addr; } ;
struct TYPE_3__ {scalar_t__ status; } ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;
 unsigned int GO7007_BUF_PAGES ;
 scalar_t__ GO7007_BUF_SIZE ;
 scalar_t__ STATUS_ONLINE ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int VM_SHARED ;
 int go7007_vm_ops ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int go7007_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct go7007_file *gofh = file->private_data;
 unsigned int index;

 if (gofh->go->status != STATUS_ONLINE)
  return -EIO;
 if (!(vma->vm_flags & VM_SHARED))
  return -EINVAL;
 if (vma->vm_end - vma->vm_start != GO7007_BUF_SIZE)
  return -EINVAL;
 mutex_lock(&gofh->lock);
 index = vma->vm_pgoff / GO7007_BUF_PAGES;
 if (index >= gofh->buf_count) {
  mutex_unlock(&gofh->lock);
  return -EINVAL;
 }
 if (index * GO7007_BUF_PAGES != vma->vm_pgoff) {
  mutex_unlock(&gofh->lock);
  return -EINVAL;
 }
 if (gofh->bufs[index].mapped > 0) {
  mutex_unlock(&gofh->lock);
  return -EBUSY;
 }
 gofh->bufs[index].mapped = 1;
 gofh->bufs[index].user_addr = vma->vm_start;
 vma->vm_ops = &go7007_vm_ops;
 vma->vm_flags |= VM_DONTEXPAND;
 vma->vm_flags &= ~VM_IO;
 vma->vm_private_data = &gofh->bufs[index];
 mutex_unlock(&gofh->lock);
 return 0;
}
