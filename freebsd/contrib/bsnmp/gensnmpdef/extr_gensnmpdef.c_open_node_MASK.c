#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct TYPE_6__ {int oidlen; scalar_t__* oid; } ;
typedef  TYPE_1__ SmiNode ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int cut ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 TYPE_1__* FUNC4 (int,scalar_t__*) ; 

__attribute__((used)) static u_int
FUNC5(const SmiNode *n, u_int level, SmiNode **last)
{
	SmiNode *n1;
	u_int i;

	if (*last != NULL) {
		for (i = 0; i < (*last)->oidlen - 1; i++) {
			if (i >= n->oidlen) {
				level = FUNC0((*last)->oidlen -
				    n->oidlen, level);
				break;
			}
			if ((*last)->oid[i] != n->oid[i])
				break;
		}
		if (i < (*last)->oidlen - 1)
			level = FUNC0((*last)->oidlen - 1 - i,
			    level - 1) + 1;
	}

	while (level < n->oidlen - 1) {
		if (level >= cut) {
			n1 = FUNC4(level + 1, n->oid);
			if (n1 == NULL)
				continue;
			FUNC1(level);
			FUNC3("(%u", n->oid[level]);
			FUNC3(" ");
			FUNC2(n1);
			FUNC3("\n");
		}
		level++;
	}
	return (level);
}