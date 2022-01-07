
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* bits; } ;
typedef TYPE_1__ bitmap_element ;


 unsigned int BITMAP_ELEMENT_WORDS ;

__attribute__((used)) static inline int
bitmap_element_zerop (bitmap_element *element)
{



  unsigned i;

  for (i = 0; i < BITMAP_ELEMENT_WORDS; i++)
    if (element->bits[i] != 0)
      return 0;

  return 1;

}
