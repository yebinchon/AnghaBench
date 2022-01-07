
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mark_type ;


 size_t BYTES_PER_MARK_BIT ;

__attribute__((used)) static inline unsigned int
zone_get_object_mark_bit (const void *object)
{
  return (((size_t) object / BYTES_PER_MARK_BIT)
   % (8 * sizeof (mark_type)));
}
