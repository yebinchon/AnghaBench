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
typedef  int /*<<< orphan*/  u32 ;
struct net {int dummy; } ;
struct __nf_ct_flush_report {int report; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  kill_report ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ,struct __nf_ct_flush_report*) ; 

void FUNC1(struct net *net, u32 pid, int report)
{
	struct __nf_ct_flush_report fr = {
		.pid 	= pid,
		.report = report,
	};
	FUNC0(net, kill_report, &fr);
}