
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mark_type ;


 int BYTES_PER_MARK_BIT ;
 int GGC_PAGE_SIZE ;

__attribute__((used)) static inline unsigned int
zone_get_object_mark_word (const void *object)
{
  return (((size_t) object & (GGC_PAGE_SIZE - 1))
   / (8 * sizeof (mark_type) * BYTES_PER_MARK_BIT));
}
