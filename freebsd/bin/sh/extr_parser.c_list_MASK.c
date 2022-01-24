#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {union node* ch2; } ;
struct TYPE_5__ {int /*<<< orphan*/ * redirect; union node* n; } ;
struct TYPE_4__ {int backgnd; } ;
union node {scalar_t__ type; TYPE_3__ nbinary; TYPE_2__ nredir; TYPE_1__ npipe; } ;
struct nredir {int dummy; } ;

/* Variables and functions */
 int CHKALIAS ; 
 int CHKKWD ; 
 int CHKNL ; 
 void* NBACKGND ; 
 scalar_t__ NPIPE ; 
 scalar_t__ NREDIR ; 
 int /*<<< orphan*/  NSEMI ; 
#define  TBACKGND 131 
#define  TEOF 130 
#define  TNL 129 
#define  TSEMI 128 
 union node* FUNC0 () ; 
 int checkkwd ; 
 int /*<<< orphan*/  heredoclist ; 
 union node* FUNC1 (int /*<<< orphan*/ ,union node*,union node*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__* tokendlist ; 
 int /*<<< orphan*/  tokpushback ; 

__attribute__((used)) static union node *
FUNC8(int nlflag)
{
	union node *ntop, *n1, *n2, *n3;
	int tok;

	checkkwd = CHKNL | CHKKWD | CHKALIAS;
	if (!nlflag && tokendlist[FUNC3()])
		return NULL;
	ntop = n1 = NULL;
	for (;;) {
		n2 = FUNC0();
		tok = FUNC5();
		if (tok == TBACKGND) {
			if (n2 != NULL && n2->type == NPIPE) {
				n2->npipe.backgnd = 1;
			} else if (n2 != NULL && n2->type == NREDIR) {
				n2->type = NBACKGND;
			} else {
				n3 = (union node *)FUNC6(sizeof (struct nredir));
				n3->type = NBACKGND;
				n3->nredir.n = n2;
				n3->nredir.redirect = NULL;
				n2 = n3;
			}
		}
		if (ntop == NULL)
			ntop = n2;
		else if (n1 == NULL) {
			n1 = FUNC1(NSEMI, ntop, n2);
			ntop = n1;
		}
		else {
			n3 = FUNC1(NSEMI, n1->nbinary.ch2, n2);
			n1->nbinary.ch2 = n3;
			n1 = n3;
		}
		switch (tok) {
		case TBACKGND:
		case TSEMI:
			tok = FUNC5();
			/* FALLTHROUGH */
		case TNL:
			if (tok == TNL) {
				FUNC2();
				if (nlflag)
					return ntop;
			} else if (tok == TEOF && nlflag) {
				FUNC2();
				return ntop;
			} else {
				tokpushback++;
			}
			checkkwd = CHKNL | CHKKWD | CHKALIAS;
			if (!nlflag && tokendlist[FUNC3()])
				return ntop;
			break;
		case TEOF:
			if (heredoclist)
				FUNC2();
			else
				FUNC4();		/* push back EOF on input */
			return ntop;
		default:
			if (nlflag)
				FUNC7(-1);
			tokpushback++;
			return ntop;
		}
	}
}