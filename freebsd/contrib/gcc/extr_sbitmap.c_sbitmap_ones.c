
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sbitmap ;
struct TYPE_3__ {unsigned int* elms; unsigned int n_bits; int size; int bytes; } ;
typedef unsigned int SBITMAP_ELT_TYPE ;


 unsigned int SBITMAP_ELT_BITS ;
 int memset (unsigned int*,int,int ) ;

void
sbitmap_ones (sbitmap bmap)
{
  unsigned int last_bit;

  memset (bmap->elms, -1, bmap->bytes);

  last_bit = bmap->n_bits % SBITMAP_ELT_BITS;
  if (last_bit)
    bmap->elms[bmap->size - 1]
      = (SBITMAP_ELT_TYPE)-1 >> (SBITMAP_ELT_BITS - last_bit);
}
