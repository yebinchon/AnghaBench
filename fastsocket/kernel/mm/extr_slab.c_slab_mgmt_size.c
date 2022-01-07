
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slab {int dummy; } ;
typedef int kmem_bufctl_t ;


 size_t ALIGN (int,size_t) ;

__attribute__((used)) static size_t slab_mgmt_size(size_t nr_objs, size_t align)
{
 return ALIGN(sizeof(struct slab)+nr_objs*sizeof(kmem_bufctl_t), align);
}
