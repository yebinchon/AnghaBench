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
struct async_icount {int /*<<< orphan*/  rng; int /*<<< orphan*/  dcd; int /*<<< orphan*/  dsr; int /*<<< orphan*/  cts; } ;
struct moschip_port {struct async_icount icount; } ;
typedef  int __u8 ;

/* Variables and functions */
 int MOS_MSR_DELTA_CD ; 
 int MOS_MSR_DELTA_CTS ; 
 int MOS_MSR_DELTA_DSR ; 
 int MOS_MSR_DELTA_RI ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static void FUNC1(struct moschip_port *port, __u8 new_msr)
{
	struct moschip_port *mos7840_port;
	struct async_icount *icount;
	mos7840_port = port;
	icount = &mos7840_port->icount;
	if (new_msr &
	    (MOS_MSR_DELTA_CTS | MOS_MSR_DELTA_DSR | MOS_MSR_DELTA_RI |
	     MOS_MSR_DELTA_CD)) {
		icount = &mos7840_port->icount;

		/* update input line counters */
		if (new_msr & MOS_MSR_DELTA_CTS) {
			icount->cts++;
			FUNC0();
		}
		if (new_msr & MOS_MSR_DELTA_DSR) {
			icount->dsr++;
			FUNC0();
		}
		if (new_msr & MOS_MSR_DELTA_CD) {
			icount->dcd++;
			FUNC0();
		}
		if (new_msr & MOS_MSR_DELTA_RI) {
			icount->rng++;
			FUNC0();
		}
	}
}