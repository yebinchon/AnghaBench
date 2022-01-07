
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arange {scalar_t__ low; scalar_t__ high; struct arange* next; } ;
struct comp_unit {struct arange arange; scalar_t__ error; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static bfd_boolean
comp_unit_contains_address (struct comp_unit *unit, bfd_vma addr)
{
  struct arange *arange;

  if (unit->error)
    return FALSE;

  arange = &unit->arange;
  do
    {
      if (addr >= arange->low && addr < arange->high)
 return TRUE;
      arange = arange->next;
    }
  while (arange);

  return FALSE;
}
