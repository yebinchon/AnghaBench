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
struct TYPE_4__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct r8192_priv {TYPE_2__ watch_dog_timer; TYPE_1__* ops; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* rtl819x_read_eeprom_info ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct r8192_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  watch_dog_timer_callback ; 

short FUNC10(struct net_device *dev)
{

	struct r8192_priv *priv = FUNC1(dev);

	FUNC8(dev);
	FUNC6(priv);
	FUNC7(dev);
	FUNC5(dev);
	priv->ops->rtl819x_read_eeprom_info(dev);
	FUNC4(dev);
	FUNC2(dev);
	FUNC3(&priv->watch_dog_timer);
	priv->watch_dog_timer.data = (unsigned long)dev;
	priv->watch_dog_timer.function = watch_dog_timer_callback;

	//rtl8192_adapter_start(dev);
#ifdef DEBUG_EPROM
	dump_eprom(dev);
#endif
	return 0;
}