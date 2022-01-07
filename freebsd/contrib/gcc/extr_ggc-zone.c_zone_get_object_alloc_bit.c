
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int alloc_type ;


 size_t BYTES_PER_ALLOC_BIT ;

__attribute__((used)) static inline unsigned int
zone_get_object_alloc_bit (const void *object)
{
  return (((size_t) object / BYTES_PER_ALLOC_BIT)
   % (8 * sizeof (alloc_type)));
}
