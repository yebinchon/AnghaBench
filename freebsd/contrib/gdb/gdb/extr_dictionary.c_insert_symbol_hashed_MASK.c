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
struct symbol {struct symbol* hash_next; } ;
struct dictionary {int dummy; } ;

/* Variables and functions */
 struct symbol** FUNC0 (struct dictionary*) ; 
 unsigned int FUNC1 (struct dictionary*) ; 
 int /*<<< orphan*/  FUNC2 (struct symbol*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct dictionary *dict,
		      struct symbol *sym)
{
  unsigned int hash_index;
  struct symbol **buckets = FUNC0 (dict);

  hash_index = (FUNC3 (FUNC2 (sym))
		% FUNC1 (dict));
  sym->hash_next = buckets[hash_index];
  buckets[hash_index] = sym;
}