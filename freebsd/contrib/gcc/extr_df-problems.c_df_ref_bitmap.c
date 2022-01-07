
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bitmap ;


 scalar_t__ BITMAP_ALLOC (int *) ;
 int bitmap_set_bit (scalar_t__,unsigned int) ;

__attribute__((used)) static inline bitmap
df_ref_bitmap (bitmap *maps, unsigned int regno, int start, int count)
{
  bitmap ids = maps[regno];
  if (!ids)
    {
      unsigned int i;
      unsigned int end = start + count;;
      ids = BITMAP_ALLOC (((void*)0));
      maps[regno] = ids;
      for (i = start; i < end; i++)
 bitmap_set_bit (ids, i);
    }
  return ids;
}
