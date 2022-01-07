
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int bits; size_t word_no; TYPE_2__* elt1; TYPE_1__* elt2; } ;
typedef TYPE_3__ bitmap_iterator ;
struct TYPE_6__ {int* bits; unsigned int indx; struct TYPE_6__* next; } ;
struct TYPE_5__ {unsigned int indx; int* bits; struct TYPE_5__* next; } ;


 unsigned int BITMAP_ELEMENT_ALL_BITS ;
 size_t BITMAP_ELEMENT_WORDS ;
 unsigned int BITMAP_WORD_BITS ;

__attribute__((used)) static inline bool
bmp_iter_and_compl (bitmap_iterator *bi, unsigned *bit_no)
{

  if (bi->bits)
    {
    next_bit:
      while (!(bi->bits & 1))
 {
   bi->bits >>= 1;
   *bit_no += 1;
 }
      return 1;
    }




  *bit_no = ((*bit_no + BITMAP_WORD_BITS - 1)
      / BITMAP_WORD_BITS * BITMAP_WORD_BITS);
  bi->word_no++;

  while (1)
    {

      while (bi->word_no != BITMAP_ELEMENT_WORDS)
 {
   bi->bits = bi->elt1->bits[bi->word_no];
   if (bi->elt2 && bi->elt2->indx == bi->elt1->indx)
     bi->bits &= ~bi->elt2->bits[bi->word_no];
   if (bi->bits)
     goto next_bit;
   *bit_no += BITMAP_WORD_BITS;
   bi->word_no++;
 }


      bi->elt1 = bi->elt1->next;
      if (!bi->elt1)
 return 0;


      while (bi->elt2 && bi->elt2->indx < bi->elt1->indx)
 bi->elt2 = bi->elt2->next;

      *bit_no = bi->elt1->indx * BITMAP_ELEMENT_ALL_BITS;
      bi->word_no = 0;
    }
}
