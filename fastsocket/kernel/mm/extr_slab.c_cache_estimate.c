
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slab {int dummy; } ;
typedef int kmem_bufctl_t ;


 int CFLGS_OFF_SLAB ;
 unsigned long PAGE_SIZE ;
 int SLAB_LIMIT ;
 int slab_mgmt_size (int,size_t) ;

__attribute__((used)) static void cache_estimate(unsigned long gfporder, size_t buffer_size,
      size_t align, int flags, size_t *left_over,
      unsigned int *num)
{
 int nr_objs;
 size_t mgmt_size;
 size_t slab_size = PAGE_SIZE << gfporder;
 if (flags & CFLGS_OFF_SLAB) {
  mgmt_size = 0;
  nr_objs = slab_size / buffer_size;

  if (nr_objs > SLAB_LIMIT)
   nr_objs = SLAB_LIMIT;
 } else {
  nr_objs = (slab_size - sizeof(struct slab)) /
     (buffer_size + sizeof(kmem_bufctl_t));





  if (slab_mgmt_size(nr_objs, align) + nr_objs*buffer_size
         > slab_size)
   nr_objs--;

  if (nr_objs > SLAB_LIMIT)
   nr_objs = SLAB_LIMIT;

  mgmt_size = slab_mgmt_size(nr_objs, align);
 }
 *num = nr_objs;
 *left_over = slab_size - nr_objs*buffer_size - mgmt_size;
}
