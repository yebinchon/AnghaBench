#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct TYPE_10__ {scalar_t__ nodekind; int* oid; } ;
typedef  TYPE_1__ SmiNode ;

/* Variables and functions */
 scalar_t__ SMI_NODEKIND_NODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8(SmiNode *n, u_int level)
{
	FUNC0 (n->nodekind == SMI_NODEKIND_NODE);

	FUNC5(n);

	FUNC1(level);
	FUNC4("(%u ", n->oid[level]);
	FUNC3(n);
	FUNC4("\n");

	n = FUNC6(n);
	while (n != NULL) {
		FUNC2(n, level + 1);
		n = FUNC7(n);
	}
	FUNC1(level);
	FUNC4(")\n");
}