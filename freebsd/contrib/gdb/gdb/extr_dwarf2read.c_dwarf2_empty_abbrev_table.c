
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct abbrev_info {struct abbrev_info* attrs; struct abbrev_info* next; } ;


 int ABBREV_HASH_SIZE ;
 int xfree (struct abbrev_info*) ;

__attribute__((used)) static void
dwarf2_empty_abbrev_table (void *ptr_to_abbrevs_table)
{
  int i;
  struct abbrev_info *abbrev, *next;
  struct abbrev_info **abbrevs;

  abbrevs = (struct abbrev_info **)ptr_to_abbrevs_table;

  for (i = 0; i < ABBREV_HASH_SIZE; ++i)
    {
      next = ((void*)0);
      abbrev = abbrevs[i];
      while (abbrev)
 {
   next = abbrev->next;
   xfree (abbrev->attrs);
   xfree (abbrev);
   abbrev = next;
 }
      abbrevs[i] = ((void*)0);
    }
}
