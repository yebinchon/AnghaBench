
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct abbrev_info {unsigned int number; struct abbrev_info* next; } ;


 unsigned int ABBREV_HASH_SIZE ;

__attribute__((used)) static struct abbrev_info *
lookup_abbrev (unsigned int number, struct abbrev_info **abbrevs)
{
  unsigned int hash_number;
  struct abbrev_info *abbrev;

  hash_number = number % ABBREV_HASH_SIZE;
  abbrev = abbrevs[hash_number];

  while (abbrev)
    {
      if (abbrev->number == number)
 return abbrev;
      else
 abbrev = abbrev->next;
    }

  return ((void*)0);
}
