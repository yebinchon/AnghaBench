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
struct TYPE_4__ {char* dt_errmsg; char* dt_filetag; char const* dt_errtag; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
struct TYPE_5__ {int pcb_cflags; } ;

/* Variables and functions */
 int DTRACE_C_ETAGS ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,...) ; 
 size_t FUNC1 (char*) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char const*,int /*<<< orphan*/ ) ; 
 TYPE_2__* yypcb ; 

void
FUNC4(dtrace_hdl_t *dtp, const char *errtag, const char *region,
    const char *filename, int lineno, const char *format, va_list ap)
{
	size_t len, n;
	char *p, *s;

	s = dtp->dt_errmsg;
	n = sizeof (dtp->dt_errmsg);

	if (errtag != NULL && (yypcb->pcb_cflags & DTRACE_C_ETAGS))
		(void) FUNC0(s, n, "[%s] ", errtag);
	else
		s[0] = '\0';

	len = FUNC1(dtp->dt_errmsg);
	s = dtp->dt_errmsg + len;
	n = sizeof (dtp->dt_errmsg) - len;

	if (filename == NULL)
		filename = dtp->dt_filetag;

	if (filename != NULL)
		(void) FUNC0(s, n, "\"%s\", line %d: ", filename, lineno);
	else if (lineno != 0)
		(void) FUNC0(s, n, "line %d: ", lineno);
	else if (region != NULL)
		(void) FUNC0(s, n, "in %s: ", region);

	len = FUNC1(dtp->dt_errmsg);
	s = dtp->dt_errmsg + len;
	n = sizeof (dtp->dt_errmsg) - len;
	(void) FUNC3(s, n, format, ap);

	if ((p = FUNC2(dtp->dt_errmsg, '\n')) != NULL)
		*p = '\0'; /* remove trailing \n from message buffer */

	dtp->dt_errtag = errtag;
}