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
struct o2net_sock_container {int /*<<< orphan*/  sc_idle_timeout; int /*<<< orphan*/  sc_tv_timer; int /*<<< orphan*/  sc_keepalive_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct o2net_sock_container*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct o2net_sock_container*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct o2net_sock_container *sc)
{
	FUNC5(sc, &sc->sc_keepalive_work);
	FUNC6(sc, &sc->sc_keepalive_work,
		      FUNC2(FUNC4()));
	FUNC0(&sc->sc_tv_timer);
	FUNC1(&sc->sc_idle_timeout,
	       jiffies + FUNC2(FUNC3()));
}