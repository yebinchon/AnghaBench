
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstack {unsigned short max_nr_entries; } ;


 struct pstack* zalloc (int) ;

struct pstack *pstack__new(unsigned short max_nr_entries)
{
 struct pstack *pstack = zalloc((sizeof(*pstack) +
           max_nr_entries * sizeof(void *)));
 if (pstack != ((void*)0))
  pstack->max_nr_entries = max_nr_entries;
 return pstack;
}
