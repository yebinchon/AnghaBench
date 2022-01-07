
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct score_got_info {int * got_entries; } ;
typedef int * htab_t ;


 int htab_traverse (int *,int ,int **) ;
 int score_elf_resolve_final_got_entry ;

__attribute__((used)) static void
score_elf_resolve_final_got_entries (struct score_got_info *g)
{
  htab_t got_entries;

  do
    {
      got_entries = g->got_entries;

      htab_traverse (got_entries,
       score_elf_resolve_final_got_entry,
       &got_entries);
    }
  while (got_entries == ((void*)0));
}
