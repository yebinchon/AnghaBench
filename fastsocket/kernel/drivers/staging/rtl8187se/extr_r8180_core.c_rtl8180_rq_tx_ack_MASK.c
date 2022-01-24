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
struct r8180_priv {int ack_tx_to_ieee; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG4 ; 
 int CONFIG4_PWRMGT ; 
 struct r8180_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct net_device *dev){

	struct r8180_priv *priv = FUNC0(dev);

	FUNC2(dev,CONFIG4,FUNC1(dev,CONFIG4)|CONFIG4_PWRMGT);
	priv->ack_tx_to_ieee = 1;
}