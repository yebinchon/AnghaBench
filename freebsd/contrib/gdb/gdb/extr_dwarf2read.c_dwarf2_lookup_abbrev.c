
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comp_unit_head {struct abbrev_info** dwarf2_abbrevs; } ;
struct dwarf2_cu {struct comp_unit_head header; } ;
struct abbrev_info {unsigned int number; struct abbrev_info* next; } ;


 unsigned int ABBREV_HASH_SIZE ;

__attribute__((used)) static struct abbrev_info *
dwarf2_lookup_abbrev (unsigned int number, struct dwarf2_cu *cu)
{
  struct comp_unit_head *cu_header = &cu->header;
  unsigned int hash_number;
  struct abbrev_info *abbrev;

  hash_number = number % ABBREV_HASH_SIZE;
  abbrev = cu_header->dwarf2_abbrevs[hash_number];

  while (abbrev)
    {
      if (abbrev->number == number)
 return abbrev;
      else
 abbrev = abbrev->next;
    }
  return ((void*)0);
}
