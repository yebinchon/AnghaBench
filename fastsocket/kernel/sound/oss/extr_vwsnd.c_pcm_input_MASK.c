#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int hwbuf_max; int hwbuf_size; int swbuf_size; int hw_fragsize; int flags; scalar_t__ hwstate; scalar_t__ swstate; int const swb_i_avail; int swb_i_idx; int byte_count; int frag_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; int /*<<< orphan*/  chan; int /*<<< orphan*/  swbuf; } ;
typedef  TYPE_1__ vwsnd_port_t ;
typedef  scalar_t__ vwsnd_port_swstate_t ;
typedef  scalar_t__ vwsnd_port_hwstate_t ;
struct TYPE_9__ {TYPE_1__ rport; } ;
typedef  TYPE_2__ vwsnd_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int const,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int DISABLED ; 
 int ERFLOWN ; 
 int HW_BUSY ; 
 scalar_t__ HW_STOPPED ; 
 scalar_t__ SW_RUN ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(vwsnd_dev_t *devc, int erflown, int nb)
{
	vwsnd_port_t *rport = &devc->rport;
	const int hwmax  = rport->hwbuf_max;
	const int hwsize = rport->hwbuf_size;
	const int swsize = rport->swbuf_size;
	const int fragsize = rport->hw_fragsize;
	unsigned long iflags;

	FUNC1("(devc=0x%p, erflown=%d, nb=%d)\n", devc, erflown, nb);

	FUNC12(&rport->lock, iflags);
	if (erflown)
		rport->flags |= ERFLOWN;
	(void) FUNC6(rport, nb);
	if (rport->flags & HW_BUSY || !rport->swbuf) {
		FUNC13(&rport->lock, iflags);
		FUNC3("returning: HW BUSY or !swbuf\n");
		return;
	}
	if (rport->flags & DISABLED) {
		FUNC13(&rport->lock, iflags);
		FUNC3("returning: DISABLED\n");
		return;
	}
	rport->flags |= HW_BUSY;
	while (1) {
		int swptr, hwptr, hw_avail, sw_avail, swidx;
		vwsnd_port_hwstate_t hwstate = rport->hwstate;
		vwsnd_port_swstate_t swstate = rport->swstate;

		hwptr = FUNC8(&rport->chan);
		swptr = FUNC9(&rport->chan);
		hw_avail = (hwptr - swptr + hwsize) % hwsize & -fragsize;
		if (hw_avail > hwmax)
			hw_avail = hwmax;
		sw_avail = rport->swb_i_avail & -fragsize;
		if (swstate != SW_RUN) {
			FUNC2("stopping.  hwstate = %d\n", hwstate);
			if (hwstate != HW_STOPPED) {
				FUNC7(&rport->chan);
				rport->hwstate = HW_STOPPED;
			}
			FUNC14(&rport->queue);
			break;
		}
		if (!sw_avail || !hw_avail)
			break;
		FUNC13(&rport->lock, iflags);

		/*
		 * We gave up the port lock, but we have the HW_BUSY flag.
		 * Proceed without accessing any nonlocal state.
		 * Do not exit the loop -- must check for more work.
		 */

		swidx = rport->swb_i_idx;
		nb = hw_avail;
		if (nb > sw_avail)
			nb = sw_avail;
		if (nb > hwsize - swptr)
			nb = hwsize - swptr; /* don't overflow hwbuf */
		if (nb > swsize - swidx)
			nb = swsize - swidx; /* don't overflow swbuf */
		FUNC0(nb > 0);
		if (nb % fragsize) {
			FUNC2("nb = %d, fragsize = %d\n", nb, fragsize);
			FUNC2("hw_avail = %d\n", hw_avail);
			FUNC2("sw_avail = %d\n", sw_avail);
			FUNC2("hwsize = %d, swptr = %d\n", hwsize, swptr);
			FUNC2("swsize = %d, swidx = %d\n", swsize, swidx);
		}
		FUNC0(!(nb % fragsize));
		FUNC3("copying hwb[%d..%d] to swb[%d..%d]\n",
		      swptr, swptr + nb, swidx, swidx + nb);
		FUNC11(rport, swidx, swptr, nb);
		FUNC10(&rport->chan, (swptr + nb) % hwsize);
		FUNC12(&rport->lock, iflags);
		FUNC5(rport, nb);
		rport->byte_count += nb;
		rport->frag_count += nb / fragsize;
		FUNC0(nb % fragsize == 0);
		FUNC14(&rport->queue);
	}
	rport->flags &= ~HW_BUSY;
	FUNC13(&rport->lock, iflags);
	FUNC4();
}