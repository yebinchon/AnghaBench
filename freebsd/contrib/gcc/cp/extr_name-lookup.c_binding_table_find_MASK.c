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
typedef  scalar_t__ tree ;
typedef  TYPE_1__* binding_table ;
typedef  TYPE_2__* binding_entry ;
struct TYPE_6__ {scalar_t__ name; struct TYPE_6__* chain; } ;
struct TYPE_5__ {int /*<<< orphan*/  chain_count; TYPE_2__** chain; } ;

/* Variables and functions */
 size_t FUNC0 (unsigned int const,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (scalar_t__) ; 

binding_entry
FUNC2 (binding_table table, tree name)
{
  const unsigned int hash = FUNC1 (name);
  binding_entry entry = table->chain[FUNC0 (hash, table->chain_count)];

  while (entry != NULL && entry->name != name)
    entry = entry->chain;

  return entry;
}