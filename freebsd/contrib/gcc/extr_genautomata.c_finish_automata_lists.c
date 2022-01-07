
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int automata_list_table ;
 int htab_delete (int ) ;

__attribute__((used)) static void
finish_automata_lists (void)
{
  htab_delete (automata_list_table);
}
