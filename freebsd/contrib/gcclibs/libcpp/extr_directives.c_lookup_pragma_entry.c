
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pragma_entry {struct pragma_entry* next; int const* pragma; } ;
typedef int cpp_hashnode ;



__attribute__((used)) static struct pragma_entry *
lookup_pragma_entry (struct pragma_entry *chain, const cpp_hashnode *pragma)
{
  while (chain && chain->pragma != pragma)
    chain = chain->next;

  return chain;
}
