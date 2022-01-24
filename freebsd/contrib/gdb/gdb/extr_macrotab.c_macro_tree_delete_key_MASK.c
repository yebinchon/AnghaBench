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
struct macro_key {int /*<<< orphan*/  table; scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct macro_key*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (void *untyped_key)
{
  struct macro_key *key = (struct macro_key *) untyped_key;

  FUNC0 (key->table, (char *) key->name);
  FUNC1 (key, key->table);
}