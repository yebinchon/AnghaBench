
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modifies_mem {struct modifies_mem* next; int insn; } ;
typedef int rtx ;


 scalar_t__ CALL_P (int ) ;
 int INSN_CUID (int ) ;
 int PATTERN (int ) ;
 int find_mem_conflicts ;
 scalar_t__ mems_conflict_p ;
 struct modifies_mem* modifies_mem_list ;
 int note_stores (int ,int ,int ) ;

__attribute__((used)) static int
load_killed_in_block_p (int uid_limit, rtx x, bool after_insn)
{
  struct modifies_mem *list_entry = modifies_mem_list;

  while (list_entry)
    {
      rtx setter = list_entry->insn;


      if ((after_insn
    && INSN_CUID (setter) < uid_limit)
   || (! after_insn
       && INSN_CUID (setter) > uid_limit))
 {
   list_entry = list_entry->next;
   continue;
 }




      if (CALL_P (setter))
 return 1;





      mems_conflict_p = 0;
      note_stores (PATTERN (setter), find_mem_conflicts, x);
      if (mems_conflict_p)
 return 1;

      list_entry = list_entry->next;
    }
  return 0;
}
