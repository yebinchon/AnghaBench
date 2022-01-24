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
struct r8192_priv {int /*<<< orphan*/  watch_dog_timer; int /*<<< orphan*/  watch_dog_wq; int /*<<< orphan*/  priv_wq; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_WATCH_DOG_TIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(unsigned long data)
{
	struct r8192_priv *priv = FUNC1((struct net_device *) data);
	//printk("===============>watch_dog  timer\n");
	FUNC3(priv->priv_wq,&priv->watch_dog_wq, 0);
	FUNC2(&priv->watch_dog_timer, jiffies + FUNC0(IEEE80211_WATCH_DOG_TIME));
}