
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int* bits; } ;
typedef TYPE_1__ bitmap_element ;
typedef int bitmap ;
typedef unsigned int BITMAP_WORD ;


 int BITMAP_ELEMENT_WORDS ;
 int BITMAP_WORD_BITS ;
 int bitmap_element_free (int ,TYPE_1__*) ;
 scalar_t__ bitmap_element_zerop (TYPE_1__*) ;
 TYPE_1__* bitmap_find_bit (int ,int) ;

void
bitmap_clear_bit (bitmap head, int bit)
{
  bitmap_element *ptr = bitmap_find_bit (head, bit);

  if (ptr != 0)
    {
      unsigned bit_num = bit % BITMAP_WORD_BITS;
      unsigned word_num = bit / BITMAP_WORD_BITS % BITMAP_ELEMENT_WORDS;
      ptr->bits[word_num] &= ~ (((BITMAP_WORD) 1) << bit_num);


      if (bitmap_element_zerop (ptr))
 bitmap_element_free (head, ptr);
    }
}
