
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int word; int* ptr; size_t word_num; size_t size; int bit_num; } ;
typedef TYPE_1__ sbitmap_iterator ;


 int SBITMAP_ELT_BITS ;

__attribute__((used)) static inline bool
sbitmap_iter_cond (sbitmap_iterator *i, unsigned int *n)
{

  for (; i->word == 0; i->word = i->ptr[i->word_num])
    {
      i->word_num++;


      if (i->word_num >= i->size)
 return 0;

      i->bit_num = i->word_num * SBITMAP_ELT_BITS;
    }


  for (; (i->word & 1) == 0; i->word >>= 1)
    i->bit_num++;

  *n = i->bit_num;

  return 1;
}
