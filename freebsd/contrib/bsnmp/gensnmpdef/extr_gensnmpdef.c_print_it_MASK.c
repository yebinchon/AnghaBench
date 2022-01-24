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
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_8__ {int nodekind; } ;
typedef  TYPE_1__ SmiNode ;

/* Variables and functions */
#define  SMI_NODEKIND_COMPLIANCE 133 
#define  SMI_NODEKIND_GROUP 132 
#define  SMI_NODEKIND_NODE 131 
#define  SMI_NODEKIND_NOTIFICATION 130 
#define  SMI_NODEKIND_SCALAR 129 
#define  SMI_NODEKIND_TABLE 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(SmiNode *n, u_int level)
{
	switch (n->nodekind) {

	  case SMI_NODEKIND_NODE:
		FUNC1(n, level);
		break;

	  case SMI_NODEKIND_SCALAR:
		FUNC3(n, level);
		break;

	  case SMI_NODEKIND_TABLE:
		FUNC4(n, level);
		break;

	  case SMI_NODEKIND_COMPLIANCE:
	  case SMI_NODEKIND_GROUP:
		FUNC5(n);
		break;

	  case SMI_NODEKIND_NOTIFICATION:
		FUNC2(n, level);
		break;

	  default:
		FUNC0(1, "cannot handle %u nodes", n->nodekind);
	}
}