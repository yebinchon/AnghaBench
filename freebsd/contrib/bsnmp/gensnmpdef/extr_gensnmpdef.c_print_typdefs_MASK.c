#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int nodekind; } ;
typedef  TYPE_1__ SmiNode ;

/* Variables and functions */
#define  SMI_NODEKIND_COLUMN 131 
#define  SMI_NODEKIND_COMPLIANCE 130 
#define  SMI_NODEKIND_GROUP 129 
#define  SMI_NODEKIND_SCALAR 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(SmiNode *n)
{
	SmiNode *p;

	p = n;
	n = FUNC2(n);
	while (n != NULL) {
		switch (n->nodekind) {
		  case SMI_NODEKIND_SCALAR:
		  case SMI_NODEKIND_COLUMN:
			FUNC0(n);
			break;
		  case SMI_NODEKIND_COMPLIANCE:
	  	  case SMI_NODEKIND_GROUP:
			FUNC1(n);
			return;
		  default:
			break;
		}
		n = FUNC3(n);
	}

	FUNC1(p);
}