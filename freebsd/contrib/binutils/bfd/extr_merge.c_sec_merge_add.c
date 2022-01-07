
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_merge_sec_info {int dummy; } ;
struct sec_merge_hash_entry {struct sec_merge_hash_entry* next; struct sec_merge_sec_info* secinfo; } ;
struct sec_merge_hash {struct sec_merge_hash_entry* last; struct sec_merge_hash_entry* first; int size; } ;


 int TRUE ;
 struct sec_merge_hash_entry* sec_merge_hash_lookup (struct sec_merge_hash*,char const*,unsigned int,int ) ;

__attribute__((used)) static struct sec_merge_hash_entry *
sec_merge_add (struct sec_merge_hash *tab, const char *str,
        unsigned int alignment, struct sec_merge_sec_info *secinfo)
{
  register struct sec_merge_hash_entry *entry;

  entry = sec_merge_hash_lookup (tab, str, alignment, TRUE);
  if (entry == ((void*)0))
    return ((void*)0);

  if (entry->secinfo == ((void*)0))
    {
      tab->size++;
      entry->secinfo = secinfo;
      if (tab->first == ((void*)0))
 tab->first = entry;
      else
 tab->last->next = entry;
      tab->last = entry;
    }

  return entry;
}
