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
struct hash_entry {int /*<<< orphan*/ * data; } ;
struct hash_control {int dummy; } ;
typedef  int /*<<< orphan*/ * PTR ;

/* Variables and functions */
 struct hash_entry* FUNC0 (struct hash_control*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

PTR
FUNC2 (struct hash_control *table, const char *key)
{
  struct hash_entry *p;

  p = FUNC0 (table, key, FUNC1 (key), NULL, NULL);
  if (p == NULL)
    return NULL;

  return p->data;
}