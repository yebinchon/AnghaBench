
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_types {struct coff_slots* slots; } ;
struct coff_slots {int * slots; struct coff_slots* next; } ;
typedef int debug_type ;


 int COFF_SLOTS ;
 int memset (struct coff_slots*,int ,int) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static debug_type *
coff_get_slot (struct coff_types *types, int indx)
{
  struct coff_slots **pps;

  pps = &types->slots;

  while (indx >= COFF_SLOTS)
    {
      if (*pps == ((void*)0))
 {
   *pps = (struct coff_slots *) xmalloc (sizeof **pps);
   memset (*pps, 0, sizeof **pps);
 }
      pps = &(*pps)->next;
      indx -= COFF_SLOTS;
    }

  if (*pps == ((void*)0))
    {
      *pps = (struct coff_slots *) xmalloc (sizeof **pps);
      memset (*pps, 0, sizeof **pps);
    }

  return (*pps)->slots + indx;
}
