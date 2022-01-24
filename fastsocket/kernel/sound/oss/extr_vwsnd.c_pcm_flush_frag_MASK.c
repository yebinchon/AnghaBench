#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int swstate; int swb_u_idx; int hw_fragsize; int hw_fragshift; scalar_t__ zero_word; scalar_t__ swbuf; } ;
typedef  TYPE_1__ vwsnd_port_t ;
struct TYPE_6__ {TYPE_1__ wport; } ;
typedef  TYPE_2__ vwsnd_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ SW_DRAIN ; 
 scalar_t__ SW_RUN ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(vwsnd_dev_t *devc)
{
	vwsnd_port_t *wport = &devc->wport;

	FUNC0("swstate = %d\n", wport->swstate);
	if (wport->swstate == SW_RUN) {
		int idx = wport->swb_u_idx;
		int end = (idx + wport->hw_fragsize - 1)
			>> wport->hw_fragshift
			<< wport->hw_fragshift;
		int nb = end - idx;
		FUNC0("clearing %d bytes\n", nb);
		if (nb)
			FUNC2(wport->swbuf + idx,
			       (char) wport->zero_word,
			       nb);
		wport->swstate = SW_DRAIN;
		FUNC3(devc, 0, nb);
	}
	FUNC1();
}