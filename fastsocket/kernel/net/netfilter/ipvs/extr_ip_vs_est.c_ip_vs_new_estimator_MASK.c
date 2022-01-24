#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int cps; int inpps; int outpps; int inbps; int outbps; int /*<<< orphan*/  outbytes; int /*<<< orphan*/  inbytes; int /*<<< orphan*/  outpkts; int /*<<< orphan*/  inpkts; int /*<<< orphan*/  conns; } ;
struct ip_vs_estimator {int cps; int inpps; int outpps; int inbps; int outbps; int /*<<< orphan*/  list; int /*<<< orphan*/  last_outbytes; int /*<<< orphan*/  last_inbytes; int /*<<< orphan*/  last_outpkts; int /*<<< orphan*/  last_inpkts; int /*<<< orphan*/  last_conns; } ;
struct ip_vs_stats {TYPE_1__ ustats; struct ip_vs_estimator est; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  est_list ; 
 int /*<<< orphan*/  est_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ip_vs_stats *stats)
{
	struct ip_vs_estimator *est = &stats->est;

	FUNC0(&est->list);

	est->last_conns = stats->ustats.conns;
	est->cps = stats->ustats.cps<<10;

	est->last_inpkts = stats->ustats.inpkts;
	est->inpps = stats->ustats.inpps<<10;

	est->last_outpkts = stats->ustats.outpkts;
	est->outpps = stats->ustats.outpps<<10;

	est->last_inbytes = stats->ustats.inbytes;
	est->inbps = stats->ustats.inbps<<5;

	est->last_outbytes = stats->ustats.outbytes;
	est->outbps = stats->ustats.outbps<<5;

	FUNC2(&est_lock);
	FUNC1(&est->list, &est_list);
	FUNC3(&est_lock);
}