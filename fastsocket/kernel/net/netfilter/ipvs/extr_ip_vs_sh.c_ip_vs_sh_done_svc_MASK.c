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
struct ip_vs_sh_bucket {int dummy; } ;
struct ip_vs_service {struct ip_vs_sh_bucket* sched_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int IP_VS_SH_TAB_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct ip_vs_sh_bucket*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_vs_sh_bucket*) ; 

__attribute__((used)) static int FUNC3(struct ip_vs_service *svc)
{
	struct ip_vs_sh_bucket *tbl = svc->sched_data;

	/* got to clean up hash buckets here */
	FUNC1(tbl);

	/* release the table itself */
	FUNC2(svc->sched_data);
	FUNC0(6, "SH hash table (memory=%Zdbytes) released\n",
		  sizeof(struct ip_vs_sh_bucket)*IP_VS_SH_TAB_SIZE);

	return 0;
}