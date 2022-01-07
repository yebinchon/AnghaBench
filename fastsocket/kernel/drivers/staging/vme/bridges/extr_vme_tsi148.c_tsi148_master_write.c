
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vme_width_t ;
typedef int vme_cycle_t ;
typedef int vme_address_t ;
struct vme_master_resource {int kern_base; int lock; } ;
struct vme_bus_error {int address; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {scalar_t__ kern_base; } ;


 int __tsi148_master_get (struct vme_master_resource*,int*,unsigned long long*,unsigned long long*,int *,int *,int *) ;
 int err_chk ;
 TYPE_1__* flush_image ;
 int ioread16 (scalar_t__) ;
 int memcpy_toio (int,void*,unsigned int) ;
 int printk (char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tsi148_clear_errors (int ,int,size_t) ;
 struct vme_bus_error* tsi148_find_error (int ,int,size_t) ;

ssize_t tsi148_master_write(struct vme_master_resource *image, void *buf,
 size_t count, loff_t offset)
{
 int retval = 0, enabled;
 unsigned long long vme_base, size;
 vme_address_t aspace;
 vme_cycle_t cycle;
 vme_width_t dwidth;

 struct vme_bus_error *vme_err = ((void*)0);

 spin_lock(&(image->lock));

 memcpy_toio(image->kern_base + offset, buf, (unsigned int)count);
 retval = count;
 if (!err_chk)
  goto skip_chk;





 __tsi148_master_get(image, &enabled, &vme_base, &size, &aspace, &cycle,
  &dwidth);

 ioread16(flush_image->kern_base + 0x7F000);

 vme_err = tsi148_find_error(aspace, vme_base + offset, count);
 if(vme_err != ((void*)0)) {
  printk("First VME write error detected an at address 0x%llx\n",
   vme_err->address);
  retval = vme_err->address - (vme_base + offset);

  tsi148_clear_errors(aspace, vme_base + offset, count);
 }

skip_chk:
 spin_unlock(&(image->lock));

 return retval;
}
