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
struct mpoa_client {int /*<<< orphan*/  mps_ctrl_addr; } ;
struct k_message {int /*<<< orphan*/  MPS_ctrl; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_ESA_LEN ; 
 int /*<<< orphan*/  SET_MPS_CTRL_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct k_message*,struct mpoa_client*) ; 

__attribute__((used)) static void FUNC2(const char *addr, struct mpoa_client *mpc)
{
	struct k_message mesg;

	FUNC0 (mpc->mps_ctrl_addr, addr, ATM_ESA_LEN);

	mesg.type = SET_MPS_CTRL_ADDR;
	FUNC0(mesg.MPS_ctrl, addr, ATM_ESA_LEN);
	FUNC1(&mesg, mpc);

	return;
}