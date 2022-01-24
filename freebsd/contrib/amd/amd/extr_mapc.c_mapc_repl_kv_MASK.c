#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__** kvhash; } ;
typedef  TYPE_1__ mnt_map ;
struct TYPE_6__ {char* val; struct TYPE_6__* next; int /*<<< orphan*/  key; } ;
typedef  TYPE_2__ kv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char*) ; 

__attribute__((used)) static void
FUNC4(mnt_map *m, char *key, char *val)
{
  kv *k;

  /*
   * Compute the hash table offset
   */
  k = m->kvhash[FUNC2(key)];

  /*
   * Scan the linked list for the key
   */
  while (k && !FUNC0(k->key, key))
    k = k->next;

  if (k) {
    FUNC1(k->val);
    k->val = val;
  } else {
    FUNC3(m, key, val);
  }
}