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
struct tblentry {int /*<<< orphan*/  cmdname; int /*<<< orphan*/  cmdtype; struct tblentry* next; } ;

/* Variables and functions */
 unsigned int CMDTABLESIZE ; 
 int /*<<< orphan*/  CMDUNKNOWN ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 struct tblentry* FUNC0 (int) ; 
 struct tblentry** cmdtable ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 struct tblentry** lastcmdentry ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static struct tblentry *
FUNC4(const char *name, int add)
{
	unsigned int hashval;
	const char *p;
	struct tblentry *cmdp;
	struct tblentry **pp;
	size_t len;

	p = name;
	hashval = (unsigned char)*p << 4;
	while (*p)
		hashval += *p++;
	pp = &cmdtable[hashval % CMDTABLESIZE];
	for (cmdp = *pp ; cmdp ; cmdp = cmdp->next) {
		if (FUNC1(cmdp->cmdname, name))
			break;
		pp = &cmdp->next;
	}
	if (add && cmdp == NULL) {
		INTOFF;
		len = FUNC3(name);
		cmdp = *pp = FUNC0(sizeof (struct tblentry) + len + 1);
		cmdp->next = NULL;
		cmdp->cmdtype = CMDUNKNOWN;
		FUNC2(cmdp->cmdname, name, len + 1);
		INTON;
	}
	lastcmdentry = pp;
	return cmdp;
}