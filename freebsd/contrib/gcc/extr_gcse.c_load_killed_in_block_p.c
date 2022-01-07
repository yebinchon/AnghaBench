
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef TYPE_1__* basic_block ;
struct TYPE_3__ {size_t index; } ;


 scalar_t__ CALL_P (scalar_t__) ;
 int INSN_CUID (scalar_t__) ;
 scalar_t__ MEM_READONLY_P (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ gcse_mem_operand ;
 scalar_t__ gcse_mems_conflict_p ;
 int mems_conflict_for_gcse_p ;
 scalar_t__* modify_mem_list ;
 int note_stores (int ,int ,int *) ;

__attribute__((used)) static int
load_killed_in_block_p (basic_block bb, int uid_limit, rtx x, int avail_p)
{
  rtx list_entry = modify_mem_list[bb->index];


  if (MEM_READONLY_P (x))
    return 0;

  while (list_entry)
    {
      rtx setter;

      if ((avail_p
    && INSN_CUID (XEXP (list_entry, 0)) < uid_limit)
   || (! avail_p
       && INSN_CUID (XEXP (list_entry, 0)) > uid_limit))
 {
   list_entry = XEXP (list_entry, 1);
   continue;
 }

      setter = XEXP (list_entry, 0);




      if (CALL_P (setter))
 return 1;






      gcse_mem_operand = x;
      gcse_mems_conflict_p = 0;
      note_stores (PATTERN (setter), mems_conflict_for_gcse_p, ((void*)0));
      if (gcse_mems_conflict_p)
 return 1;
      list_entry = XEXP (list_entry, 1);
    }
  return 0;
}
