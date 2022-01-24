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
struct ip_vs_service {struct ip_vs_dh_bucket* sched_data; } ;
struct ip_vs_dh_bucket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_vs_dh_bucket*,struct ip_vs_service*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_vs_dh_bucket*) ; 

__attribute__((used)) static int FUNC2(struct ip_vs_service *svc)
{
	struct ip_vs_dh_bucket *tbl = svc->sched_data;

	/* got to clean up hash buckets here */
	FUNC1(tbl);

	/* assign the hash buckets with the updated service */
	FUNC0(tbl, svc);

	return 0;
}