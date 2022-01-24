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
struct TYPE_4__ {int t_size; TYPE_2__* t_intr; int /*<<< orphan*/ * t_name; int /*<<< orphan*/  t_type; } ;
typedef  TYPE_1__ tdesc_t ;
struct TYPE_5__ {int intr_signed; int intr_offset; int intr_nbits; int intr_fformat; int /*<<< orphan*/  intr_type; int /*<<< orphan*/  intr_iformat; } ;
typedef  TYPE_2__ intr_t ;

/* Variables and functions */
 int CTF_FP_MAX ; 
 int /*<<< orphan*/  INTRINSIC ; 
 int /*<<< orphan*/  INTR_INT ; 
 int /*<<< orphan*/  INTR_REAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 char* FUNC2 (char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char) ; 
 void* FUNC5 (int) ; 

__attribute__((used)) static char *
FUNC6(char *cp, tdesc_t **rtdp)
{
	intr_t *intr = FUNC5(sizeof (intr_t));
	tdesc_t *tdp;
	int width, fmt, i;

	switch (*cp++) {
	case 'b':
		intr->intr_type = INTR_INT;
		if (*cp == 's')
			intr->intr_signed = 1;
		else if (*cp != 'u')
			FUNC0("intrinsic/b", "[su]", cp);
		cp++;

		if (FUNC4("cbv", *cp))
			intr->intr_iformat = *cp++;

		cp = FUNC2(cp, &width);
		if (*cp++ != ';')
			FUNC0("intrinsic/b", "; (post-width)", cp - 1);

		cp = FUNC2(cp, &intr->intr_offset);
		if (*cp++ != ';')
			FUNC0("intrinsic/b", "; (post-offset)", cp - 1);

		cp = FUNC2(cp, &intr->intr_nbits);
		break;

	case 'R':
		intr->intr_type = INTR_REAL;
		for (fmt = 0, i = 0; FUNC1(*(cp + i)); i++)
			fmt = fmt * 10 + (*(cp + i) - '0');

		if (fmt < 1 || fmt > CTF_FP_MAX)
			FUNC0("intrinsic/R", "number <= CTF_FP_MAX", cp);

		intr->intr_fformat = fmt;
		cp += i;

		if (*cp++ != ';')
			FUNC0("intrinsic/R", ";", cp - 1);
		cp = FUNC2(cp, &width);

		intr->intr_nbits = width * 8;
		break;
	}

	tdp = FUNC5(sizeof (*tdp));
	tdp->t_type = INTRINSIC;
	tdp->t_size = width;
	tdp->t_name = NULL;
	tdp->t_intr = intr;
	FUNC3(3, NULL, "intrinsic: size=%d", width);
	*rtdp = tdp;

	return (cp);
}