
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned int word_no; int bits; TYPE_6__* elt2; TYPE_6__* elt1; } ;
typedef TYPE_1__ bitmap_iterator ;
typedef TYPE_2__* bitmap ;
struct TYPE_9__ {unsigned int indx; int* bits; struct TYPE_9__* next; } ;
struct TYPE_8__ {TYPE_6__* first; } ;


 unsigned int BITMAP_ELEMENT_ALL_BITS ;
 unsigned int BITMAP_ELEMENT_WORDS ;
 unsigned int BITMAP_WORD_BITS ;
 TYPE_6__ bitmap_zero_bits ;

__attribute__((used)) static inline void
bmp_iter_and_init (bitmap_iterator *bi, bitmap map1, bitmap map2,
     unsigned start_bit, unsigned *bit_no)
{
  bi->elt1 = map1->first;
  bi->elt2 = map2->first;



  while (1)
    {
      if (!bi->elt1)
 {
   bi->elt2 = ((void*)0);
   break;
 }

      if (bi->elt1->indx >= start_bit / BITMAP_ELEMENT_ALL_BITS)
 break;
      bi->elt1 = bi->elt1->next;
    }


  while (1)
    {
      if (!bi->elt2)
 {
   bi->elt1 = bi->elt2 = &bitmap_zero_bits;
   break;
 }

      if (bi->elt2->indx >= bi->elt1->indx)
 break;
      bi->elt2 = bi->elt2->next;
    }


  if (bi->elt1->indx == bi->elt2->indx)
    {


      if (bi->elt1->indx != start_bit / BITMAP_ELEMENT_ALL_BITS)
 start_bit = bi->elt1->indx * BITMAP_ELEMENT_ALL_BITS;

      bi->word_no = start_bit / BITMAP_WORD_BITS % BITMAP_ELEMENT_WORDS;
      bi->bits = bi->elt1->bits[bi->word_no] & bi->elt2->bits[bi->word_no];
      bi->bits >>= start_bit % BITMAP_WORD_BITS;
    }
  else
    {


      bi->word_no = BITMAP_ELEMENT_WORDS - 1;
      bi->bits = 0;
    }





  start_bit += !bi->bits;

  *bit_no = start_bit;
}
