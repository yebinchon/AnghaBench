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
struct printf_spec {int field_width; int flags; int base; } ;

/* Variables and functions */
 int KSYM_SYMBOL_LEN ; 
 int SMALL ; 
 int SPECIAL ; 
 int ZEROPAD ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (char*,char*,unsigned long,struct printf_spec) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long) ; 
 char* FUNC3 (char*,char*,char*,struct printf_spec) ; 

__attribute__((used)) static char *FUNC4(char *buf, char *end, void *ptr,
				struct printf_spec spec, char ext)
{
	unsigned long value = (unsigned long) ptr;
#ifdef CONFIG_KALLSYMS
	char sym[KSYM_SYMBOL_LEN];
	if (ext != 'f' && ext != 's')
		sprint_symbol(sym, value);
	else
		kallsyms_lookup(value, NULL, NULL, NULL, sym);
	return string(buf, end, sym, spec);
#else
	spec.field_width = 2*sizeof(void *);
	spec.flags |= SPECIAL | SMALL | ZEROPAD;
	spec.base = 16;
	return FUNC1(buf, end, value, spec);
#endif
}