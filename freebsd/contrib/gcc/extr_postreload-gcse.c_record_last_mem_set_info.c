
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modifies_mem {struct modifies_mem* next; int insn; } ;
typedef int rtx ;


 struct modifies_mem* modifies_mem_list ;
 int modifies_mem_obstack ;
 scalar_t__ obstack_alloc (int *,int) ;

__attribute__((used)) static void
record_last_mem_set_info (rtx insn)
{
  struct modifies_mem *list_entry;

  list_entry = (struct modifies_mem *) obstack_alloc (&modifies_mem_obstack,
            sizeof (struct modifies_mem));
  list_entry->insn = insn;
  list_entry->next = modifies_mem_list;
  modifies_mem_list = list_entry;
}
