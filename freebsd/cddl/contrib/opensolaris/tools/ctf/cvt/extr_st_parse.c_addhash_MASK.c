#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int t_id; struct TYPE_7__* t_next; int /*<<< orphan*/ * t_name; struct TYPE_7__* t_hash; } ;
typedef  TYPE_1__ tdesc_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__** hash_table ; 
 TYPE_1__* FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__** name_table ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(tdesc_t *tdp, int num)
{
	int hash = FUNC0(num);
	tdesc_t *ttdp;
	char added_num = 0, added_name = 0;

	/*
	 * If it already exists in the hash table don't add it again
	 * (but still check to see if the name should be hashed).
	 */
	ttdp = FUNC2(num);

	if (ttdp == NULL) {
		tdp->t_id = num;
		tdp->t_hash = hash_table[hash];
		hash_table[hash] = tdp;
		added_num = 1;
	}

	if (tdp->t_name != NULL) {
		ttdp = FUNC3(tdp->t_name);
		if (ttdp == NULL) {
			hash = FUNC1(tdp->t_name);
			tdp->t_next = name_table[hash];
			name_table[hash] = tdp;
			added_name = 1;
		}
	}
	if (!added_num && !added_name) {
		FUNC4("stabs: broken hash\n");
	}
}