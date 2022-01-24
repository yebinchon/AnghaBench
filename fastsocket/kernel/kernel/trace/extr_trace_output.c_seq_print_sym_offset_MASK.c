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
struct trace_seq {int dummy; } ;

/* Variables and functions */
 int KSYM_SYMBOL_LEN ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 
 int FUNC2 (struct trace_seq*,char const*,char const*) ; 

__attribute__((used)) static int
FUNC3(struct trace_seq *s, const char *fmt,
		     unsigned long address)
{
#ifdef CONFIG_KALLSYMS
	char str[KSYM_SYMBOL_LEN];
	const char *name;

	sprint_symbol(str, address);
	name = kretprobed(str);

	return trace_seq_printf(s, fmt, name);
#endif
	return 1;
}