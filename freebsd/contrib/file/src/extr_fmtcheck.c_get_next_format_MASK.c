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
typedef  scalar_t__ EFT ;

/* Variables and functions */
 scalar_t__ FMTCHECK_DONE ; 
 scalar_t__ FMTCHECK_PRECISION ; 
 scalar_t__ FMTCHECK_UNKNOWN ; 
 scalar_t__ FMTCHECK_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (char const**,char const*,scalar_t__) ; 
 scalar_t__ FUNC1 (char const**) ; 
 scalar_t__ FUNC2 (char const**) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 char* FUNC4 (char const*,char const) ; 

__attribute__((used)) static EFT
FUNC5(const char **pf, EFT eft)
{
	int		infmt;
	const char	*f;

	if (eft == FMTCHECK_WIDTH) {
		(*pf)++;
		return FUNC2(pf);
	} else if (eft == FMTCHECK_PRECISION) {
		(*pf)++;
		return FUNC1(pf);
	}

	f = *pf;
	infmt = 0;
	while (!infmt) {
		f = FUNC4(f, '%');
		if (f == NULL)
			FUNC0(pf,f,FMTCHECK_DONE);
		f++;
		if (!*f)
			FUNC0(pf,f,FMTCHECK_UNKNOWN);
		if (*f != '%')
			infmt = 1;
		else
			f++;
	}

	/* Eat any of the flags */
	while (*f && (FUNC4("#0- +", *f)))
		f++;

	if (*f == '*') {
		FUNC0(pf,f,FMTCHECK_WIDTH);
	}
	/* eat any width */
	while (FUNC3((unsigned char)*f)) f++;
	if (!*f) {
		FUNC0(pf,f,FMTCHECK_UNKNOWN);
	}

	FUNC0(pf,f,FUNC2(pf));
	/*NOTREACHED*/
}