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
struct uea_softc {scalar_t__ cmv_ack; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_TIMEOUT ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct uea_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct uea_softc*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct uea_softc *sc)
{
	int ret = FUNC3(sc, sc->cmv_ack , ACK_TIMEOUT);

	sc->cmv_ack = 0;

	FUNC2(FUNC0(sc), "wait_event_timeout : %d ms\n",
			FUNC1(ret));

	if (ret < 0)
		return ret;

	return (ret == 0) ? -ETIMEDOUT : 0;
}