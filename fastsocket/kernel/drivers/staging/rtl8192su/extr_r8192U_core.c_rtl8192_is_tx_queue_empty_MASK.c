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
struct r8192_priv {int /*<<< orphan*/ * tx_pending; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int HCCA_QUEUE ; 
 int MGNT_QUEUE ; 
 int TXCMD_QUEUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,scalar_t__) ; 

short FUNC3(struct net_device *dev)
{
	int i=0;
	struct r8192_priv *priv = FUNC1(dev);
	//struct ieee80211_device* ieee = priv->ieee80211;
	for (i=0; i<=MGNT_QUEUE; i++)
	{
		if ((i== TXCMD_QUEUE) || (i == HCCA_QUEUE) )
			continue;
		if (FUNC0(&priv->tx_pending[i]))
		{
			FUNC2("===>tx queue is not empty:%d, %d\n", i, FUNC0(&priv->tx_pending[i]));
			return 0;
		}
	}
	return 1;
}