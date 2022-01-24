#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_4__ {char* dt_errmsg; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
struct TYPE_5__ {TYPE_1__* pcb_hdl; scalar_t__ pcb_fileptr; int /*<<< orphan*/  pcb_filetag; int /*<<< orphan*/  pcb_region; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_SYNTAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,...) ; 
 char* FUNC3 (char const*,char) ; 
 size_t FUNC4 (char*) ; 
 int /*<<< orphan*/  yylineno ; 
 TYPE_2__* yypcb ; 
 char* yytext ; 

void
FUNC5(const char *format, va_list ap)
{
	if (yypcb == NULL)
		return; /* compiler is not currently active: act as a no-op */

	FUNC1(yypcb->pcb_hdl, FUNC0(D_SYNTAX), yypcb->pcb_region,
	    yypcb->pcb_filetag, yypcb->pcb_fileptr ? yylineno : 0, format, ap);

	if (FUNC3(format, '\n') == NULL) {
		dtrace_hdl_t *dtp = yypcb->pcb_hdl;
		size_t len = FUNC4(dtp->dt_errmsg);
		char *p, *s = dtp->dt_errmsg + len;
		size_t n = sizeof (dtp->dt_errmsg) - len;

		if (yytext[0] == '\0')
			(void) FUNC2(s, n, " near end of input");
		else if (yytext[0] == '\n')
			(void) FUNC2(s, n, " near end of line");
		else {
			if ((p = FUNC3(yytext, '\n')) != NULL)
				*p = '\0'; /* crop at newline */
			(void) FUNC2(s, n, " near \"%s\"", yytext);
		}
	}
}