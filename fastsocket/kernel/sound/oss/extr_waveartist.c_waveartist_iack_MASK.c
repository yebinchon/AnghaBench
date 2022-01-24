#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int io_base; } ;
struct TYPE_5__ {TYPE_1__ hw; } ;
typedef  TYPE_2__ wavnc_info ;

/* Variables and functions */
 unsigned int CTLR ; 
 int IRQ_ACK ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 

__attribute__((used)) static inline void
FUNC2(wavnc_info *devc)
{
	unsigned int ctlr_port = devc->hw.io_base + CTLR;
	int old_ctlr;

	old_ctlr = FUNC0(ctlr_port) & ~IRQ_ACK;

	FUNC1(old_ctlr | IRQ_ACK, ctlr_port);
	FUNC1(old_ctlr, ctlr_port);
}