
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned int indx; unsigned int* bits; struct TYPE_8__* next; } ;
typedef TYPE_1__ bitmap_element ;
typedef TYPE_2__* bitmap ;
struct TYPE_9__ {unsigned int indx; TYPE_1__* current; } ;
typedef unsigned int BITMAP_WORD ;


 unsigned int BITMAP_ELEMENT_ALL_BITS ;
 int BITMAP_ELEMENT_WORDS ;
 unsigned int BITMAP_WORD_BITS ;
 int bitmap_element_free (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* bitmap_find_bit (TYPE_2__*,unsigned int) ;

void
bitmap_clear_range (bitmap head, unsigned int start, unsigned int count)
{
  unsigned int first_index = start / BITMAP_ELEMENT_ALL_BITS;
  unsigned int end_bit_plus1 = start + count;
  unsigned int end_bit = end_bit_plus1 - 1;
  unsigned int last_index = (end_bit) / BITMAP_ELEMENT_ALL_BITS;
  bitmap_element *elt = bitmap_find_bit (head, start);




  if (!elt)
    {
      if (head->current)
 {
   if (head->indx < first_index)
     {
       elt = head->current->next;
       if (!elt)
  return;
     }
   else
     elt = head->current;
 }
      else
 return;
    }

  while (elt && (elt->indx <= last_index))
    {
      bitmap_element * next_elt = elt->next;
      unsigned elt_start_bit = (elt->indx) * BITMAP_ELEMENT_ALL_BITS;
      unsigned elt_end_bit_plus1 = elt_start_bit + BITMAP_ELEMENT_ALL_BITS;


      if (elt_start_bit >= start && elt_end_bit_plus1 <= end_bit_plus1)

 bitmap_element_free (head, elt);
      else
 {

   unsigned int first_word_to_mod;
   BITMAP_WORD first_mask;
   unsigned int last_word_to_mod;
   BITMAP_WORD last_mask;
   unsigned int i;
   bool clear = 1;

   if (elt_start_bit <= start)
     {


       first_word_to_mod = (start - elt_start_bit) / BITMAP_WORD_BITS;


       first_mask =
  (((BITMAP_WORD) 1) << ((start % BITMAP_WORD_BITS))) - 1;
       first_mask = ~first_mask;
     }
   else
     {

       first_word_to_mod = 0;
       first_mask = 0;
       first_mask = ~first_mask;
     }

   if (elt_end_bit_plus1 <= end_bit_plus1)
     {

       last_word_to_mod = BITMAP_ELEMENT_WORDS - 1;
       last_mask = 0;
       last_mask = ~last_mask;
     }
   else
     {

       last_word_to_mod =
  (end_bit_plus1 - elt_start_bit) / BITMAP_WORD_BITS;


       last_mask =
  (((BITMAP_WORD) 1) << (((end_bit_plus1) % BITMAP_WORD_BITS))) - 1;
     }


   if (first_word_to_mod == last_word_to_mod)
     {
       BITMAP_WORD mask = first_mask & last_mask;
       elt->bits[first_word_to_mod] &= ~mask;
     }
   else
     {
       elt->bits[first_word_to_mod] &= ~first_mask;
       for (i = first_word_to_mod + 1; i < last_word_to_mod; i++)
  elt->bits[i] = 0;
       elt->bits[last_word_to_mod] &= ~last_mask;
     }
   for (i = 0; i < BITMAP_ELEMENT_WORDS; i++)
     if (elt->bits[i])
       {
  clear = 0;
  break;
       }

   if (clear)
     bitmap_element_free (head, elt);
 }
      elt = next_elt;
    }

  if (elt)
    {
      head->current = elt;
      head->indx = head->current->indx;
    }
}
