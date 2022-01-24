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
struct ifaddrs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifaddrs*) ; 
 int FUNC1 (struct ifaddrs**) ; 
 struct ifaddrs* ifas ; 

__attribute__((used)) static void
FUNC2(void)
{
	struct ifaddrs *oifas, *nifas;

	if (FUNC1(&nifas) == -1)
		return;

	oifas = ifas;
	ifas = nifas;

	if (oifas)
		FUNC0(oifas);
}