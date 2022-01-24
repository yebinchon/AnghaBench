#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  tlv ;
struct mpoa_client {int* our_ctrl_addr; TYPE_2__* dev; } ;
struct lec_priv {TYPE_1__* lane2_ops; } ;
struct k_message {int /*<<< orphan*/  MPS_ctrl; } ;
struct TYPE_6__ {char* name; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_5__ {int (* associate_req ) (TYPE_2__*,int /*<<< orphan*/ ,int*,int) ;int (* resolve ) (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ATM_ESA_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 struct lec_priv* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct k_message *mesg, struct mpoa_client *mpc)
{
	struct lec_priv *priv;
	int i, retval ;

	uint8_t tlv[4 + 1 + 1 + 1 + ATM_ESA_LEN];

	tlv[0] = 00; tlv[1] = 0xa0; tlv[2] = 0x3e; tlv[3] = 0x2a; /* type  */
	tlv[4] = 1 + 1 + ATM_ESA_LEN;  /* length                           */
	tlv[5] = 0x02;                 /* MPOA client                      */
	tlv[6] = 0x00;                 /* number of MPS MAC addresses      */

	FUNC1(&tlv[7], mesg->MPS_ctrl, ATM_ESA_LEN); /* MPC ctrl ATM addr */
	FUNC1(mpc->our_ctrl_addr, mesg->MPS_ctrl, ATM_ESA_LEN);

	FUNC0("mpoa: (%s) setting MPC ctrl ATM address to ",
	       (mpc->dev) ? mpc->dev->name : "<unknown>");
	for (i = 7; i < sizeof(tlv); i++)
		FUNC0("%02x ", tlv[i]);
	FUNC0("\n");

	if (mpc->dev) {
		priv = FUNC2(mpc->dev);
		retval = priv->lane2_ops->associate_req(mpc->dev, mpc->dev->dev_addr, tlv, sizeof(tlv));
		if (retval == 0)
			FUNC3("mpoa: (%s) MPOA device type TLV association failed\n", mpc->dev->name);
		retval = priv->lane2_ops->resolve(mpc->dev, NULL, 1, NULL, NULL);
		if (retval < 0)
			FUNC3("mpoa: (%s) targetless LE_ARP request failed\n", mpc->dev->name);
	}

	return;
}