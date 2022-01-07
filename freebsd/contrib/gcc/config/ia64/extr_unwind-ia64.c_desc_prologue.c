
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ unw_word ;
struct TYPE_2__ {scalar_t__ reg; } ;
struct unw_state_record {int in_body; scalar_t__ when_target; scalar_t__ region_start; scalar_t__ region_len; int done; int epilogue_count; unsigned char gr_save_loc; int spill_offset; scalar_t__ imask; scalar_t__ any_spills; TYPE_1__ curr; int epilogue_start; scalar_t__ first_region; } ;


 int UNW_WHEN_NEVER ;
 int UNW_WHERE_GR ;
 int finish_prologue (struct unw_state_record*) ;
 int pop (struct unw_state_record*) ;
 int push (struct unw_state_record*) ;
 scalar_t__* save_order ;
 int set_reg (scalar_t__,int ,scalar_t__,int ) ;

__attribute__((used)) static void
desc_prologue (int body, unw_word rlen, unsigned char mask,
        unsigned char grsave, struct unw_state_record *sr)
{
  int i;

  if (!(sr->in_body || sr->first_region))
    finish_prologue (sr);
  sr->first_region = 0;


  if (sr->when_target < sr->region_start + sr->region_len)
    {
      sr->done = 1;
      return;
    }

  for (i = 0; i < sr->epilogue_count; ++i)
    pop (sr);

  sr->epilogue_count = 0;
  sr->epilogue_start = UNW_WHEN_NEVER;

  if (!body)
    push (sr);

  sr->region_start += sr->region_len;
  sr->region_len = rlen;
  sr->in_body = body;

  if (!body)
    {
      for (i = 0; i < 4; ++i)
 {
   if (mask & 0x8)
     set_reg (sr->curr.reg + save_order[i], UNW_WHERE_GR,
       sr->region_start + sr->region_len - 1, grsave++);
   mask <<= 1;
 }
      sr->gr_save_loc = grsave;
      sr->any_spills = 0;
      sr->imask = 0;
      sr->spill_offset = 0x10;
    }
}
