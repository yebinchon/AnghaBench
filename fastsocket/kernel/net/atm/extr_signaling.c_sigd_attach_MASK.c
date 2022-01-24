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
struct atm_vcc {int /*<<< orphan*/  flags; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_VF_META ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int EADDRINUSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct atm_vcc* sigd ; 
 int /*<<< orphan*/  sigd_dev ; 
 int /*<<< orphan*/  sigd_sleep ; 
 int /*<<< orphan*/  FUNC2 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct atm_vcc *vcc)
{
	if (sigd) return -EADDRINUSE;
	FUNC0("sigd_attach\n");
	sigd = vcc;
	vcc->dev = &sigd_dev;
	FUNC3(FUNC2(vcc));
	FUNC1(ATM_VF_META,&vcc->flags);
	FUNC1(ATM_VF_READY,&vcc->flags);
#ifdef WAIT_FOR_DEMON
	wake_up(&sigd_sleep);
#endif
	return 0;
}