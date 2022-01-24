#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fname; } ;
union node {scalar_t__ type; TYPE_1__ nfile; } ;
struct heredoc {char* eofmark; struct heredoc* next; scalar_t__ striptabs; } ;

/* Variables and functions */
 scalar_t__ NFROMFD ; 
 scalar_t__ NHERE ; 
 scalar_t__ NTOFD ; 
 scalar_t__ NXHERE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TWORD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union node*,char*,int /*<<< orphan*/ ) ; 
 struct heredoc* heredoc ; 
 struct heredoc* heredoclist ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ quoteflag ; 
 union node* redirnode ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* wordtext ; 

__attribute__((used)) static void
FUNC7(void)
{
	union node *n = redirnode;

	FUNC1(TWORD);
	if (n->type == NHERE) {
		struct heredoc *here = heredoc;
		struct heredoc *p;

		if (quoteflag == 0)
			n->type = NXHERE;
		FUNC0(("Here document %d\n", n->type));
		if (here->striptabs) {
			while (*wordtext == '\t')
				wordtext++;
		}
		if (! FUNC4(wordtext))
			FUNC6("Illegal eof marker for << redirection");
		FUNC5(wordtext);
		here->eofmark = wordtext;
		here->next = NULL;
		if (heredoclist == NULL)
			heredoclist = here;
		else {
			for (p = heredoclist ; p->next ; p = p->next);
			p->next = here;
		}
	} else if (n->type == NTOFD || n->type == NFROMFD) {
		FUNC2(n, wordtext, 0);
	} else {
		n->nfile.fname = FUNC3();
	}
}