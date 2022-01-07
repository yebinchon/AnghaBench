
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pragma_entry {struct pragma_entry* next; } ;
typedef int cpp_reader ;


 scalar_t__ _cpp_aligned_alloc (int *,int) ;
 int memset (struct pragma_entry*,int ,int) ;

__attribute__((used)) static struct pragma_entry *
new_pragma_entry (cpp_reader *pfile, struct pragma_entry **chain)
{
  struct pragma_entry *new_entry;

  new_entry = (struct pragma_entry *)
    _cpp_aligned_alloc (pfile, sizeof (struct pragma_entry));

  memset (new_entry, 0, sizeof (struct pragma_entry));
  new_entry->next = *chain;

  *chain = new_entry;
  return new_entry;
}
