#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* binding_table ;
typedef  TYPE_2__* binding_entry ;
struct TYPE_7__ {struct TYPE_7__* chain; } ;
struct TYPE_6__ {int chain_count; int entry_count; TYPE_2__** chain; } ;

/* Variables and functions */
 size_t FUNC0 (unsigned int const,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4 (binding_table table, tree name, tree type)
{
  const unsigned int hash = FUNC1 (name);
  const size_t i = FUNC0 (hash, table->chain_count);
  binding_entry entry = FUNC2 (name, type);

  entry->chain = table->chain[i];
  table->chain[i] = entry;
  ++table->entry_count;

  if (3 * table->chain_count < 5 * table->entry_count)
    FUNC3 (table);
}