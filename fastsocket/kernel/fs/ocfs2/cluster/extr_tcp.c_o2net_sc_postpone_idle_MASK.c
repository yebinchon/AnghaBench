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
struct o2net_sock_container {int /*<<< orphan*/  sc_idle_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct o2net_sock_container*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct o2net_sock_container *sc)
{
	/* Only push out an existing timer */
	if (FUNC1(&sc->sc_idle_timeout))
		FUNC0(sc);
}