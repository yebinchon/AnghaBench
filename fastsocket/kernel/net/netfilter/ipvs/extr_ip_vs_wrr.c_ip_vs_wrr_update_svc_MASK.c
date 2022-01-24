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
struct ip_vs_wrr_mark {scalar_t__ mw; scalar_t__ cw; int /*<<< orphan*/  di; int /*<<< orphan*/ * cl; } ;
struct ip_vs_service {int /*<<< orphan*/  destinations; struct ip_vs_wrr_mark* sched_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_vs_service*) ; 
 scalar_t__ FUNC1 (struct ip_vs_service*) ; 

__attribute__((used)) static int FUNC2(struct ip_vs_service *svc)
{
	struct ip_vs_wrr_mark *mark = svc->sched_data;

	mark->cl = &svc->destinations;
	mark->mw = FUNC1(svc);
	mark->di = FUNC0(svc);
	if (mark->cw > mark->mw)
		mark->cw = 0;
	return 0;
}