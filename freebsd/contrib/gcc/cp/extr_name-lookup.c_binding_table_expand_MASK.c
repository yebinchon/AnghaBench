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
typedef  TYPE_1__* binding_table ;
typedef  TYPE_2__* binding_entry ;
struct TYPE_6__ {struct TYPE_6__* chain; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {size_t chain_count; size_t entry_count; TYPE_2__** chain; } ;

/* Variables and functions */
 size_t FUNC0 (unsigned int const,size_t const) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t const) ; 

__attribute__((used)) static void
FUNC3 (binding_table table)
{
  const size_t old_chain_count = table->chain_count;
  const size_t old_entry_count = table->entry_count;
  const size_t new_chain_count = 2 * old_chain_count;
  binding_entry *old_chains = table->chain;
  size_t i;

  FUNC2 (table, new_chain_count);
  for (i = 0; i < old_chain_count; ++i)
    {
      binding_entry entry = old_chains[i];
      for (; entry != NULL; entry = old_chains[i])
	{
	  const unsigned int hash = FUNC1 (entry->name);
	  const size_t j = FUNC0 (hash, new_chain_count);

	  old_chains[i] = entry->chain;
	  entry->chain = table->chain[j];
	  table->chain[j] = entry;
	}
    }
  table->entry_count = old_entry_count;
}