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
struct hash_entry {char const* string; unsigned long hash; struct hash_entry* next; int /*<<< orphan*/  data; } ;
struct hash_control {int /*<<< orphan*/  memory; int /*<<< orphan*/  insertions; } ;
typedef  int /*<<< orphan*/  PTR ;

/* Variables and functions */
 struct hash_entry* FUNC0 (struct hash_control*,char const*,int /*<<< orphan*/ ,struct hash_entry***,unsigned long*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

const char *
FUNC3 (struct hash_control *table, const char *key, PTR value)
{
  struct hash_entry *p;
  struct hash_entry **list;
  unsigned long hash;

  p = FUNC0 (table, key, FUNC2 (key), &list, &hash);
  if (p != NULL)
    return "exists";

#ifdef HASH_STATISTICS
  ++table->insertions;
#endif

  p = (struct hash_entry *) FUNC1 (&table->memory, sizeof (*p));
  p->string = key;
  p->hash = hash;
  p->data = value;

  p->next = *list;
  *list = p;

  return NULL;
}