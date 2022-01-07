
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_master_resource {int lock; scalar_t__ kern_base; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;


 int memcpy_toio (scalar_t__,void*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

ssize_t ca91cx42_master_write(struct vme_master_resource *image, void *buf,
 size_t count, loff_t offset)
{
 int retval = 0;

 spin_lock(&(image->lock));

 memcpy_toio(image->kern_base + offset, buf, (unsigned int)count);
 retval = count;

 spin_unlock(&(image->lock));

 return retval;
}
