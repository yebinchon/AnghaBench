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
typedef  int /*<<< orphan*/  EFT ;

/* Variables and functions */
 int /*<<< orphan*/  FMTCHECK_DOUBLE ; 
 int /*<<< orphan*/  FMTCHECK_INT ; 
 int /*<<< orphan*/  FMTCHECK_INTPOINTER ; 
 int /*<<< orphan*/  FMTCHECK_LONG ; 
 int /*<<< orphan*/  FMTCHECK_LONGDOUBLE ; 
 int /*<<< orphan*/  FMTCHECK_LONGPOINTER ; 
 int /*<<< orphan*/  FMTCHECK_QUAD ; 
 int /*<<< orphan*/  FMTCHECK_QUADPOINTER ; 
 int /*<<< orphan*/  FMTCHECK_SHORTPOINTER ; 
 int /*<<< orphan*/  FMTCHECK_STRING ; 
 int /*<<< orphan*/  FMTCHECK_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char const**,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char const) ; 

__attribute__((used)) static EFT
FUNC2(const char **pf)
{
	int		sh, lg, quad, longdouble;
	const char	*f;

	sh = lg = quad = longdouble = 0;

	f = *pf;
	switch (*f) {
	case 'h':
		f++;
		sh = 1;
		break;
	case 'l':
		f++;
		if (!*f) FUNC0(pf,f,FMTCHECK_UNKNOWN);
		if (*f == 'l') {
			f++;
			quad = 1;
		} else {
			lg = 1;
		}
		break;
	case 'q':
		f++;
		quad = 1;
		break;
	case 'L':
		f++;
		longdouble = 1;
		break;
#ifdef WIN32
	case 'I':
		f++;
		if (!*f) RETURN(pf,f,FMTCHECK_UNKNOWN);
		if (*f == '3' && f[1] == '2') {
			f += 2;
		} else if (*f == '6' && f[1] == '4') {
			f += 2;
			quad = 1;
		}
#ifdef _WIN64
		else {
			quad = 1;
		}
#endif
		break;
#endif
	default:
		break;
	}
	if (!*f) FUNC0(pf,f,FMTCHECK_UNKNOWN);
	if (FUNC1("diouxX", *f)) {
		if (longdouble)
			FUNC0(pf,f,FMTCHECK_UNKNOWN);
		if (lg)
			FUNC0(pf,f,FMTCHECK_LONG);
		if (quad)
			FUNC0(pf,f,FMTCHECK_QUAD);
		FUNC0(pf,f,FMTCHECK_INT);
	}
	if (*f == 'n') {
		if (longdouble)
			FUNC0(pf,f,FMTCHECK_UNKNOWN);
		if (sh)
			FUNC0(pf,f,FMTCHECK_SHORTPOINTER);
		if (lg)
			FUNC0(pf,f,FMTCHECK_LONGPOINTER);
		if (quad)
			FUNC0(pf,f,FMTCHECK_QUADPOINTER);
		FUNC0(pf,f,FMTCHECK_INTPOINTER);
	}
	if (FUNC1("DOU", *f)) {
		if (sh + lg + quad + longdouble)
			FUNC0(pf,f,FMTCHECK_UNKNOWN);
		FUNC0(pf,f,FMTCHECK_LONG);
	}
	if (FUNC1("eEfg", *f)) {
		if (longdouble)
			FUNC0(pf,f,FMTCHECK_LONGDOUBLE);
		if (sh + lg + quad)
			FUNC0(pf,f,FMTCHECK_UNKNOWN);
		FUNC0(pf,f,FMTCHECK_DOUBLE);
	}
	if (*f == 'c') {
		if (sh + lg + quad + longdouble)
			FUNC0(pf,f,FMTCHECK_UNKNOWN);
		FUNC0(pf,f,FMTCHECK_INT);
	}
	if (*f == 's') {
		if (sh + lg + quad + longdouble)
			FUNC0(pf,f,FMTCHECK_UNKNOWN);
		FUNC0(pf,f,FMTCHECK_STRING);
	}
	if (*f == 'p') {
		if (sh + lg + quad + longdouble)
			FUNC0(pf,f,FMTCHECK_UNKNOWN);
		FUNC0(pf,f,FMTCHECK_LONG);
	}
	FUNC0(pf,f,FMTCHECK_UNKNOWN);
	/*NOTREACHED*/
}