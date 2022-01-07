
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vme_width_t ;
typedef int vme_cycle_t ;
typedef int vme_address_t ;
struct vme_master_resource {int lock; } ;


 int __tsi148_master_get (struct vme_master_resource*,int*,unsigned long long*,unsigned long long*,int *,int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int tsi148_master_get( struct vme_master_resource *image, int *enabled,
 unsigned long long *vme_base, unsigned long long *size,
 vme_address_t *aspace, vme_cycle_t *cycle, vme_width_t *dwidth)
{
 int retval;

 spin_lock(&(image->lock));

 retval = __tsi148_master_get(image, enabled, vme_base, size, aspace,
  cycle, dwidth);

 spin_unlock(&(image->lock));

 return retval;
}
