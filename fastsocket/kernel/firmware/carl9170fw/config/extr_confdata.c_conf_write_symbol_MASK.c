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
struct symbol {int type; } ;
struct conf_printer {int /*<<< orphan*/  (* print_symbol ) (int /*<<< orphan*/ *,struct symbol*,char const*,void*) ;} ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  S_OTHER 130 
#define  S_STRING 129 
#define  S_UNKNOWN 128 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct symbol*,char const*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct symbol*,char const*,void*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (struct symbol*) ; 

__attribute__((used)) static void FUNC5(FILE *fp, struct symbol *sym,
			      struct conf_printer *printer, void *printer_arg)
{
	const char *str;

	switch (sym->type) {
	case S_OTHER:
	case S_UNKNOWN:
		break;
	case S_STRING:
		str = FUNC4(sym);
		str = FUNC3(str);
		printer->print_symbol(fp, sym, str, printer_arg);
		FUNC0((void *)str);
		break;
	default:
		str = FUNC4(sym);
		printer->print_symbol(fp, sym, str, printer_arg);
	}
}