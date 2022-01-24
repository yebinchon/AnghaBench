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
typedef  size_t u8 ;
struct event_symbol {char* alias; char* symbol; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 char** event_type_descriptors ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,...) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(u8 type, struct event_symbol *syms,
				unsigned max)
{
	char name[64];
	unsigned i;

	for (i = 0; i < max ; i++, syms++) {
		if (FUNC2(syms->alias))
			FUNC1(name, sizeof(name),  "%s OR %s",
				 syms->symbol, syms->alias);
		else
			FUNC1(name, sizeof(name), "%s", syms->symbol);

		FUNC0("  %-50s [%s]\n", name,
			event_type_descriptors[type]);
	}
}