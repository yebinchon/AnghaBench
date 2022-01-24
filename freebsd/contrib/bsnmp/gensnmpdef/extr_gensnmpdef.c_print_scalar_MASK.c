#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct TYPE_8__ {scalar_t__ nodekind; int* oid; char* name; int /*<<< orphan*/  access; } ;
typedef  TYPE_1__ SmiNode ;

/* Variables and functions */
 scalar_t__ SMI_NODEKIND_SCALAR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8(SmiNode *n, u_int level)
{
	SmiNode *p;

	FUNC0 (n->nodekind == SMI_NODEKIND_SCALAR);

	FUNC6(n);

	FUNC1(level);
	FUNC5("(%u ", n->oid[level]);
	FUNC3(n);
	FUNC5(" ");
	FUNC4(n);

	/* generate the operation from the parent node name */
	p = FUNC7(n);
	FUNC5(" op_%s", p->name);

	FUNC2(n->access);

	FUNC5(")\n");
}