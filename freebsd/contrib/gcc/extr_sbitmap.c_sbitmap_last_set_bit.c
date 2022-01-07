
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sbitmap ;
struct TYPE_3__ {int* elms; int size; } ;
typedef int SBITMAP_ELT_TYPE ;


 int SBITMAP_ELT_BITS ;

int
sbitmap_last_set_bit (sbitmap bmap)
{
  int i;
  SBITMAP_ELT_TYPE *ptr = bmap->elms;

  for (i = bmap->size - 1; i >= 0; i--)
    {
      SBITMAP_ELT_TYPE word = ptr[i];

      if (word != 0)
 {
   unsigned int index = (i + 1) * SBITMAP_ELT_BITS - 1;
   SBITMAP_ELT_TYPE mask
     = (SBITMAP_ELT_TYPE) 1 << (SBITMAP_ELT_BITS - 1);

   while (1)
     {
       if ((word & mask) != 0)
  return index;

       mask >>= 1;
       index--;
     }
 }
    }

  return -1;
}
