#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* name; uintptr_t addr; size_t size; } ;
typedef  TYPE_1__ syment_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int maxsyms ; 
 int nsyms ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__* symbol_table ; 

__attribute__((used)) static void
FUNC3(char *name, uintptr_t addr, size_t size)
{
	syment_t *sep;

	if (nsyms >= maxsyms) {
		maxsyms += 10000;
		symbol_table = FUNC2(symbol_table, maxsyms * sizeof (*sep));
		if (symbol_table == NULL) {
			(void) FUNC1(stderr, "can't allocate symbol table\n");
			FUNC0(3);
		}
	}
	sep = &symbol_table[nsyms++];

	sep->name = name;
	sep->addr = addr;
	sep->size = size;
}