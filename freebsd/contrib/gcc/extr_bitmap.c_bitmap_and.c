
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ indx; int* bits; struct TYPE_15__* next; } ;
typedef TYPE_2__ bitmap_element ;
typedef TYPE_3__* bitmap ;
struct TYPE_16__ {TYPE_1__* current; int indx; TYPE_2__* first; } ;
struct TYPE_14__ {int indx; } ;
typedef int BITMAP_WORD ;


 unsigned int BITMAP_ELEMENT_WORDS ;
 int bitmap_copy (TYPE_3__*,TYPE_3__*) ;
 int bitmap_elt_clear_from (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* bitmap_elt_insert_after (TYPE_3__*,TYPE_2__*,scalar_t__) ;
 int gcc_assert (int) ;

void
bitmap_and (bitmap dst, bitmap a, bitmap b)
{
  bitmap_element *dst_elt = dst->first;
  bitmap_element *a_elt = a->first;
  bitmap_element *b_elt = b->first;
  bitmap_element *dst_prev = ((void*)0);

  gcc_assert (dst != a && dst != b);

  if (a == b)
    {
      bitmap_copy (dst, a);
      return;
    }

  while (a_elt && b_elt)
    {
      if (a_elt->indx < b_elt->indx)
 a_elt = a_elt->next;
      else if (b_elt->indx < a_elt->indx)
 b_elt = b_elt->next;
      else
 {

   unsigned ix;
   BITMAP_WORD ior = 0;

   if (!dst_elt)
     dst_elt = bitmap_elt_insert_after (dst, dst_prev, a_elt->indx);
   else
     dst_elt->indx = a_elt->indx;
   for (ix = BITMAP_ELEMENT_WORDS; ix--;)
     {
       BITMAP_WORD r = a_elt->bits[ix] & b_elt->bits[ix];

       dst_elt->bits[ix] = r;
       ior |= r;
     }
   if (ior)
     {
       dst_prev = dst_elt;
       dst_elt = dst_elt->next;
     }
   a_elt = a_elt->next;
   b_elt = b_elt->next;
 }
    }
  bitmap_elt_clear_from (dst, dst_elt);
  gcc_assert (!dst->current == !dst->first);
  if (dst->current)
    dst->indx = dst->current->indx;
}
