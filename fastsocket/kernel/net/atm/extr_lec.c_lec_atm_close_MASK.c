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
struct sk_buff {int /*<<< orphan*/  truesize; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct lec_priv {int /*<<< orphan*/ * lecd; } ;
struct atm_vcc {scalar_t__ proto_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk_receive_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct atm_vcc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct lec_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct lec_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (struct atm_vcc*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct atm_vcc *vcc)
{
	struct sk_buff *skb;
	struct net_device *dev = (struct net_device *)vcc->proto_data;
	struct lec_priv *priv = FUNC4(dev);

	priv->lecd = NULL;
	/* Do something needful? */

	FUNC5(dev);
	FUNC2(priv);

	if (FUNC9(&FUNC7(vcc)->sk_receive_queue))
		FUNC6("%s lec_atm_close: closing with messages pending\n",
		       dev->name);
	while ((skb = FUNC8(&FUNC7(vcc)->sk_receive_queue)) != NULL) {
		FUNC0(vcc, skb->truesize);
		FUNC1(skb);
	}

	FUNC6("%s: Shut down!\n", dev->name);
	FUNC3(THIS_MODULE);
}