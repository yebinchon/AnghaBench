#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int hwbuf_max; int hwbuf_size; int swbuf_size; int hw_fragsize; int flags; scalar_t__ hwstate; scalar_t__ swstate; int const swb_i_avail; int swb_i_idx; int byte_count; int frame_size; int frag_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; scalar_t__ MSC_offset; int /*<<< orphan*/  chan; } ;
typedef  TYPE_1__ vwsnd_port_t ;
typedef  scalar_t__ vwsnd_port_swstate_t ;
typedef  scalar_t__ vwsnd_port_hwstate_t ;
struct TYPE_11__ {TYPE_1__ wport; } ;
typedef  TYPE_2__ vwsnd_dev_t ;
struct TYPE_12__ {scalar_t__ msc; } ;
typedef  TYPE_3__ ustmsc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int const,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int DISABLED ; 
 int ERFLOWN ; 
 int HW_BUSY ; 
 scalar_t__ HW_RUNNING ; 
 scalar_t__ HW_STOPPED ; 
 scalar_t__ SW_DRAIN ; 
 scalar_t__ SW_INITIAL ; 
 scalar_t__ SW_OFF ; 
 scalar_t__ SW_RUN ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(vwsnd_dev_t *devc, int erflown, int nb)
{
	vwsnd_port_t *wport = &devc->wport;
	const int hwmax  = wport->hwbuf_max;
	const int hwsize = wport->hwbuf_size;
	const int swsize = wport->swbuf_size;
	const int fragsize = wport->hw_fragsize;
	unsigned long iflags;

	FUNC1("(devc=0x%p, erflown=%d, nb=%d)\n", devc, erflown, nb);
	FUNC14(&wport->lock, iflags);
	if (erflown)
		wport->flags |= ERFLOWN;
	(void) FUNC6(wport, nb);
	if (wport->flags & HW_BUSY) {
		FUNC15(&wport->lock, iflags);
		FUNC3("returning: HW BUSY\n");
		return;
	}
	if (wport->flags & DISABLED) {
		FUNC15(&wport->lock, iflags);
		FUNC3("returning: DISABLED\n");
		return;
	}
	wport->flags |= HW_BUSY;
	while (1) {
		int swptr, hwptr, hw_avail, sw_avail, swidx;
		vwsnd_port_hwstate_t hwstate = wport->hwstate;
		vwsnd_port_swstate_t swstate = wport->swstate;
		int hw_unavail;
		ustmsc_t ustmsc;

		hwptr = FUNC10(&wport->chan);
		swptr = FUNC11(&wport->chan);
		hw_unavail = (swptr - hwptr + hwsize) % hwsize;
		hw_avail = (hwmax - hw_unavail) & -fragsize;
		sw_avail = wport->swb_i_avail & -fragsize;
		if (sw_avail && swstate == SW_RUN) {
			if (wport->flags & ERFLOWN) {
				wport->flags &= ~ERFLOWN;
			}
		} else if (swstate == SW_INITIAL ||
			 swstate == SW_OFF ||
			 (swstate == SW_DRAIN &&
			  !sw_avail &&
			  (wport->flags & ERFLOWN))) {
			FUNC2("stopping.  hwstate = %d\n", hwstate);
			if (hwstate != HW_STOPPED) {
				FUNC8(&wport->chan);
				wport->hwstate = HW_STOPPED;
			}
			FUNC16(&wport->queue);
			break;
		}
		if (!sw_avail || !hw_avail)
			break;
		FUNC15(&wport->lock, iflags);

		/*
		 * We gave up the port lock, but we have the HW_BUSY flag.
		 * Proceed without accessing any nonlocal state.
		 * Do not exit the loop -- must check for more work.
		 */

		swidx = wport->swb_i_idx;
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
		FUNC3("copying swb[%d..%d] to hwb[%d..%d]\n",
		      swidx, swidx + nb, swptr, swptr + nb);
		FUNC13(wport, swidx, swptr, nb);
		FUNC12(&wport->chan, (swptr + nb) % hwsize);
		FUNC14(&wport->lock, iflags);
		if (hwstate == HW_STOPPED) {
			FUNC3("starting\n");
			FUNC7(&wport->chan);
			wport->hwstate = HW_RUNNING;
			FUNC9(&wport->chan, &ustmsc);
			FUNC0(wport->byte_count % wport->frame_size == 0);
			wport->MSC_offset = ustmsc.msc - wport->byte_count / wport->frame_size;
		}
		FUNC5(wport, nb);
		wport->byte_count += nb;
		wport->frag_count += nb / fragsize;
		FUNC0(nb % fragsize == 0);
		FUNC16(&wport->queue);
	}
	wport->flags &= ~HW_BUSY;
	FUNC15(&wport->lock, iflags);
	FUNC4();
}