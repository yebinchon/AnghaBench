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
struct ip_vs_service {struct ip_vs_lblc_table* sched_data; } ;
struct ip_vs_lblc_table {int /*<<< orphan*/  periodic_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_vs_lblc_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_vs_lblc_table*) ; 

__attribute__((used)) static int FUNC4(struct ip_vs_service *svc)
{
	struct ip_vs_lblc_table *tbl = svc->sched_data;

	/* remove periodic timer */
	FUNC1(&tbl->periodic_timer);

	/* got to clean up table entries here */
	FUNC2(tbl);

	/* release the table itself */
	FUNC3(tbl);
	FUNC0(6, "LBLC hash table (memory=%Zdbytes) released\n",
		  sizeof(*tbl));

	return 0;
}