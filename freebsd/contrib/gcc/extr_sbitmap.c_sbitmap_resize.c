
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct simple_bitmap_def {int dummy; } ;
typedef TYPE_1__* sbitmap ;
struct TYPE_6__ {unsigned int bytes; unsigned int n_bits; unsigned int* elms; int size; } ;
typedef unsigned int SBITMAP_ELT_TYPE ;


 unsigned int SBITMAP_ELT_BITS ;
 unsigned int SBITMAP_SET_SIZE (unsigned int) ;
 int memset (unsigned int*,int,unsigned int) ;
 TYPE_1__* xrealloc (TYPE_1__*,unsigned int) ;

sbitmap
sbitmap_resize (sbitmap bmap, unsigned int n_elms, int def)
{
  unsigned int bytes, size, amt;
  unsigned int last_bit;

  size = SBITMAP_SET_SIZE (n_elms);
  bytes = size * sizeof (SBITMAP_ELT_TYPE);
  if (bytes > bmap->bytes)
    {
      amt = (sizeof (struct simple_bitmap_def)
     + bytes - sizeof (SBITMAP_ELT_TYPE));
      bmap = xrealloc (bmap, amt);
    }

  if (n_elms > bmap->n_bits)
    {
      if (def)
 {
   memset (bmap->elms + bmap->size, -1, bytes - bmap->bytes);


   last_bit = bmap->n_bits % SBITMAP_ELT_BITS;
   if (last_bit)
     bmap->elms[bmap->size - 1]
       |= ~((SBITMAP_ELT_TYPE)-1 >> (SBITMAP_ELT_BITS - last_bit));


   last_bit = n_elms % SBITMAP_ELT_BITS;
   if (last_bit)
     bmap->elms[size - 1]
       &= (SBITMAP_ELT_TYPE)-1 >> (SBITMAP_ELT_BITS - last_bit);
 }
      else
 memset (bmap->elms + bmap->size, 0, bytes - bmap->bytes);
    }
  else if (n_elms < bmap->n_bits)
    {

      last_bit = n_elms % SBITMAP_ELT_BITS;
      if (last_bit)
 bmap->elms[size - 1]
   &= (SBITMAP_ELT_TYPE)-1 >> (SBITMAP_ELT_BITS - last_bit);
    }

  bmap->n_bits = n_elms;
  bmap->size = size;
  bmap->bytes = bytes;
  return bmap;
}
