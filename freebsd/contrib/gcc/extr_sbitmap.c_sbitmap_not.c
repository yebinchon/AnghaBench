
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int* sbitmap_ptr ;
typedef TYPE_1__* sbitmap ;
struct TYPE_4__ {unsigned int size; unsigned int* elms; unsigned int n_bits; } ;
typedef unsigned int SBITMAP_ELT_TYPE ;


 unsigned int SBITMAP_ELT_BITS ;

void
sbitmap_not (sbitmap dst, sbitmap src)
{
  unsigned int i, n = dst->size;
  sbitmap_ptr dstp = dst->elms;
  sbitmap_ptr srcp = src->elms;
  unsigned int last_bit;

  for (i = 0; i < n; i++)
    *dstp++ = ~*srcp++;


  last_bit = src->n_bits % SBITMAP_ELT_BITS;
  if (last_bit)
    dst->elms[n-1] = dst->elms[n-1]
      & ((SBITMAP_ELT_TYPE)-1 >> (SBITMAP_ELT_BITS - last_bit));
}
