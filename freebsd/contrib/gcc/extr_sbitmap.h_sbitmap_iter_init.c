
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int word_num; unsigned int bit_num; unsigned int size; unsigned int* ptr; unsigned int word; } ;
typedef TYPE_1__ sbitmap_iterator ;
typedef TYPE_2__* sbitmap ;
struct TYPE_6__ {unsigned int size; unsigned int* elms; } ;


 scalar_t__ SBITMAP_ELT_BITS ;

__attribute__((used)) static inline void
sbitmap_iter_init (sbitmap_iterator *i, sbitmap bmp, unsigned int min)
{
  i->word_num = min / (unsigned int) SBITMAP_ELT_BITS;
  i->bit_num = min;
  i->size = bmp->size;
  i->ptr = bmp->elms;

  if (i->word_num >= i->size)
    i->word = 0;
  else
    i->word = (i->ptr[i->word_num]
        >> (i->bit_num % (unsigned int) SBITMAP_ELT_BITS));
}
