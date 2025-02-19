
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ indx; int* bits; struct TYPE_13__* next; } ;
typedef TYPE_2__ bitmap_element ;
typedef TYPE_3__* bitmap ;
struct TYPE_14__ {TYPE_1__* current; int indx; TYPE_2__* first; } ;
struct TYPE_12__ {int indx; } ;
typedef int BITMAP_WORD ;


 unsigned int BITMAP_ELEMENT_WORDS ;
 int bitmap_clear (TYPE_3__*) ;
 int bitmap_element_free (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* bitmap_elt_insert_after (TYPE_3__*,TYPE_2__*,scalar_t__) ;
 int gcc_assert (int) ;
 int memcpy (int*,int*,int) ;

void
bitmap_xor_into (bitmap a, bitmap b)
{
  bitmap_element *a_elt = a->first;
  bitmap_element *b_elt = b->first;
  bitmap_element *a_prev = ((void*)0);

  if (a == b)
    {
      bitmap_clear (a);
      return;
    }

  while (b_elt)
    {
      if (!a_elt || b_elt->indx < a_elt->indx)
 {

   bitmap_element *dst = bitmap_elt_insert_after (a, a_prev, b_elt->indx);
   memcpy (dst->bits, b_elt->bits, sizeof (dst->bits));
   a_prev = dst;
   b_elt = b_elt->next;
 }
      else if (a_elt->indx < b_elt->indx)
 {
   a_prev = a_elt;
   a_elt = a_elt->next;
 }
      else
 {

   unsigned ix;
   BITMAP_WORD ior = 0;
   bitmap_element *next = a_elt->next;

   for (ix = BITMAP_ELEMENT_WORDS; ix--;)
     {
       BITMAP_WORD r = a_elt->bits[ix] ^ b_elt->bits[ix];

       ior |= r;
       a_elt->bits[ix] = r;
     }
   b_elt = b_elt->next;
   if (ior)
     a_prev = a_elt;
   else
     bitmap_element_free (a, a_elt);
   a_elt = next;
 }
    }
  gcc_assert (!a->current == !a->first);
  if (a->current)
    a->indx = a->current->indx;
}
