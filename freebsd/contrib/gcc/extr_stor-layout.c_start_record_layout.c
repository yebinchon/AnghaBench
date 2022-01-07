
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct record_layout_info_s {int dummy; } ;
typedef TYPE_1__* record_layout_info ;
struct TYPE_4__ {scalar_t__ remaining_in_alignment; scalar_t__ packed_maybe_necessary; scalar_t__ pending_statics; scalar_t__ prev_field; int bitpos; int offset; void* record_align; void* offset_align; void* unpacked_align; int t; } ;


 unsigned int BIGGEST_ALIGNMENT ;
 void* BITS_PER_UNIT ;
 void* MAX (void*,unsigned int) ;
 scalar_t__ STRUCTURE_SIZE_BOUNDARY ;
 unsigned int TYPE_ALIGN (int ) ;
 int TYPE_PACKED (int ) ;
 int bitsize_zero_node ;
 int size_zero_node ;
 TYPE_1__* xmalloc (int) ;

record_layout_info
start_record_layout (tree t)
{
  record_layout_info rli = xmalloc (sizeof (struct record_layout_info_s));

  rli->t = t;




  rli->record_align = MAX (BITS_PER_UNIT, TYPE_ALIGN (t));
  rli->unpacked_align = rli->record_align;
  rli->offset_align = MAX (rli->record_align, BIGGEST_ALIGNMENT);







  rli->offset = size_zero_node;
  rli->bitpos = bitsize_zero_node;
  rli->prev_field = 0;
  rli->pending_statics = 0;
  rli->packed_maybe_necessary = 0;
  rli->remaining_in_alignment = 0;

  return rli;
}
