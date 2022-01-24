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
typedef  int /*<<< orphan*/  uint64_t ;
struct rds_info_iterator {int dummy; } ;
struct rds_info_counter {char* name; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  ctr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rds_info_iterator*,struct rds_info_counter*,int) ; 
 int FUNC2 (char const* const) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const* const,int) ; 

void FUNC4(struct rds_info_iterator *iter,
			 uint64_t *values, const char *const *names, size_t nr)
{
	struct rds_info_counter ctr;
	size_t i;

	for (i = 0; i < nr; i++) {
		FUNC0(FUNC2(names[i]) >= sizeof(ctr.name));
		FUNC3(ctr.name, names[i], sizeof(ctr.name) - 1);
		ctr.name[sizeof(ctr.name) - 1] = '\0';
		ctr.value = values[i];

		FUNC1(iter, &ctr, sizeof(ctr));
	}
}