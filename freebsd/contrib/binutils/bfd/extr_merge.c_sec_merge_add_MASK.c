#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sec_merge_sec_info {int dummy; } ;
struct sec_merge_hash_entry {struct sec_merge_hash_entry* next; struct sec_merge_sec_info* secinfo; } ;
struct sec_merge_hash {struct sec_merge_hash_entry* last; struct sec_merge_hash_entry* first; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 struct sec_merge_hash_entry* FUNC0 (struct sec_merge_hash*,char const*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sec_merge_hash_entry *
FUNC1 (struct sec_merge_hash *tab, const char *str,
	       unsigned int alignment, struct sec_merge_sec_info *secinfo)
{
  register struct sec_merge_hash_entry *entry;

  entry = FUNC0 (tab, str, alignment, TRUE);
  if (entry == NULL)
    return NULL;

  if (entry->secinfo == NULL)
    {
      tab->size++;
      entry->secinfo = secinfo;
      if (tab->first == NULL)
	tab->first = entry;
      else
	tab->last->next = entry;
      tab->last = entry;
    }

  return entry;
}