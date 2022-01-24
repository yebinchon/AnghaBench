#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hecubafb_par {TYPE_1__* board; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* wait_for_ack ) (struct hecubafb_par*,int) ;int /*<<< orphan*/  (* set_ctl ) (struct hecubafb_par*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* set_data ) (struct hecubafb_par*,unsigned char) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HCB_DS_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct hecubafb_par*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct hecubafb_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hecubafb_par*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hecubafb_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hecubafb_par*,int) ; 

__attribute__((used)) static void FUNC5(struct hecubafb_par *par, unsigned char data)
{
	/* set data */
	par->board->set_data(par, data);

	/* set DS low */
	par->board->set_ctl(par, HCB_DS_BIT, 0);

	/* wait for ack */
	par->board->wait_for_ack(par, 0);

	/* set DS hi */
	par->board->set_ctl(par, HCB_DS_BIT, 1);

	/* wait for ack to clear */
	par->board->wait_for_ack(par, 1);
}