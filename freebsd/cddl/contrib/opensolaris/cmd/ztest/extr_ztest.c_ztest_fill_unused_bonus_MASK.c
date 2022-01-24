#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_3__ {int /*<<< orphan*/ * db_data; } ;
typedef  TYPE_1__ dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(dmu_buf_t *db, void *end, uint64_t obj,
    objset_t *os, uint64_t gen)
{
	uint64_t *bonusp;

	FUNC0(FUNC1((char *)end - (char *)db->db_data, 8));

	for (bonusp = db->db_data; bonusp < (uint64_t *)end; bonusp++) {
		uint64_t token = FUNC2(obj, FUNC3(os),
		    gen, bonusp - (uint64_t *)db->db_data);
		*bonusp = token;
	}
}