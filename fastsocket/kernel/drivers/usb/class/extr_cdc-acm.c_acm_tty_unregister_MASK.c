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
struct acm {int rx_buflimit; size_t minor; struct acm* country_codes; TYPE_2__* ru; TYPE_1__* wb; int /*<<< orphan*/  ctrlurb; int /*<<< orphan*/  control; } ;
struct TYPE_4__ {int /*<<< orphan*/  urb; } ;
struct TYPE_3__ {int /*<<< orphan*/  urb; } ;

/* Variables and functions */
 int ACM_NW ; 
 int /*<<< orphan*/ ** acm_table ; 
 int /*<<< orphan*/  acm_tty_driver ; 
 int /*<<< orphan*/  FUNC0 (struct acm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct acm *acm)
{
	int i, nr;

	nr = acm->rx_buflimit;
	FUNC1(acm_tty_driver, acm->minor);
	FUNC3(acm->control);
	acm_table[acm->minor] = NULL;
	FUNC2(acm->ctrlurb);
	for (i = 0; i < ACM_NW; i++)
		FUNC2(acm->wb[i].urb);
	for (i = 0; i < nr; i++)
		FUNC2(acm->ru[i].urb);
	FUNC0(acm->country_codes);
	FUNC0(acm);
}