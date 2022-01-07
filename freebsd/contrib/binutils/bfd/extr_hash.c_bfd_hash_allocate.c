
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objalloc {int dummy; } ;
struct bfd_hash_table {scalar_t__ memory; } ;


 int bfd_error_no_memory ;
 int bfd_set_error (int ) ;
 void* objalloc_alloc (struct objalloc*,unsigned int) ;

void *
bfd_hash_allocate (struct bfd_hash_table *table,
     unsigned int size)
{
  void * ret;

  ret = objalloc_alloc ((struct objalloc *) table->memory, size);
  if (ret == ((void*)0) && size != 0)
    bfd_set_error (bfd_error_no_memory);
  return ret;
}
