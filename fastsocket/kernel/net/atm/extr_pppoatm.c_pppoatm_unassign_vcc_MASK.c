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
struct pppoatm_vcc {int /*<<< orphan*/  chan; int /*<<< orphan*/  wakeup_tasklet; int /*<<< orphan*/  old_pop; int /*<<< orphan*/  old_push; } ;
struct atm_vcc {int /*<<< orphan*/ * user_back; int /*<<< orphan*/  pop; int /*<<< orphan*/  push; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 struct pppoatm_vcc* FUNC0 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC1 (struct pppoatm_vcc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct atm_vcc *atmvcc)
{
	struct pppoatm_vcc *pvcc;
	pvcc = FUNC0(atmvcc);
	atmvcc->push = pvcc->old_push;
	atmvcc->pop = pvcc->old_pop;
	FUNC4(&pvcc->wakeup_tasklet);
	FUNC3(&pvcc->chan);
	atmvcc->user_back = NULL;
	FUNC1(pvcc);
	/* Gee, I hope we have the big kernel lock here... */
	FUNC2(THIS_MODULE);
}