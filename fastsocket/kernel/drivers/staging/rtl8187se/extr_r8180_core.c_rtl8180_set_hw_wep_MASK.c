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
typedef  int u8 ;
typedef  int u32 ;
struct r8180_priv {int* key0; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 scalar_t__ KEY0 ; 
 int /*<<< orphan*/  PGSELECT ; 
 int PGSELECT_PG_SHIFT ; 
 int /*<<< orphan*/  SECURITY ; 
 int SECURITY_ENCRYP_104 ; 
 int SECURITY_ENCRYP_MASK ; 
 int SECURITY_ENCRYP_SHIFT ; 
 int SECURITY_WEP_RX_ENABLE_SHIFT ; 
 int SECURITY_WEP_TX_ENABLE_SHIFT ; 
 struct r8180_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,scalar_t__,int) ; 

void FUNC6(struct net_device *dev)
{
	struct r8180_priv *priv = FUNC1(dev);
	u8 pgreg;
	u8 security;
	u32 key0_word4;

	pgreg=FUNC2(dev, PGSELECT);
	FUNC4(dev, PGSELECT, pgreg &~ (1<<PGSELECT_PG_SHIFT));

	key0_word4 = FUNC3(dev, KEY0+4+4+4);
	key0_word4 &= ~ 0xff;
	key0_word4 |= priv->key0[3]& 0xff;
	FUNC5(dev,KEY0,(priv->key0[0]));
	FUNC5(dev,KEY0+4,(priv->key0[1]));
	FUNC5(dev,KEY0+4+4,(priv->key0[2]));
	FUNC5(dev,KEY0+4+4+4,(key0_word4));

	security  = FUNC2(dev,SECURITY);
	security |= (1<<SECURITY_WEP_TX_ENABLE_SHIFT);
	security |= (1<<SECURITY_WEP_RX_ENABLE_SHIFT);
	security &= ~ SECURITY_ENCRYP_MASK;
	security |= (SECURITY_ENCRYP_104<<SECURITY_ENCRYP_SHIFT);

	FUNC4(dev, SECURITY, security);

	FUNC0("key %x %x %x %x",FUNC3(dev,KEY0+4+4+4),
	      FUNC3(dev,KEY0+4+4),FUNC3(dev,KEY0+4),
	      FUNC3(dev,KEY0));
}