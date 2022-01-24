#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_3__ {int dsrate; } ;
struct TYPE_4__ {TYPE_1__ phy; } ;
struct uea_softc {size_t modem_index; TYPE_2__ stats; } ;

/* Variables and functions */
 scalar_t__ ADI930 ; 
 int /*<<< orphan*/  FUNC0 (struct uea_softc*) ; 
 scalar_t__ FUNC1 (struct uea_softc*) ; 
 int /*<<< orphan*/  UEA_SET_TIMEOUT ; 
 scalar_t__* altsetting ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int FUNC3 (struct uea_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct uea_softc *sc, u32 dsrate)
{
	int ret;
	u16 timeout;

	/* in bulk mode the modem have problem with high rate
	 * changing internal timing could improve things, but the
	 * value is misterious.
	 * ADI930 don't support it (-EPIPE error).
	 */

	if (FUNC1(sc) == ADI930 ||
	    altsetting[sc->modem_index] > 0 ||
	    sc->stats.phy.dsrate == dsrate)
		return;

	/* Original timming (1Mbit/s) from ADI (used in windows driver) */
	timeout = (dsrate <= 1024*1024) ? 0 : 1;
	ret = FUNC3(sc, UEA_SET_TIMEOUT, timeout, 0, NULL);
	FUNC2(FUNC0(sc), "setting new timeout %d%s\n",
		 timeout,  ret < 0 ? " failed" : "");

}