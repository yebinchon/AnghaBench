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
struct octeon_ethernet {TYPE_1__* tx_free_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct octeon_ethernet *priv,
					int skb_to_free,
					int qos, int take_lock)
{
	/* Free skbuffs not in use by the hardware.  */
	if (skb_to_free > 0) {
		if (take_lock)
			FUNC2(&priv->tx_free_list[qos].lock);
		while (skb_to_free > 0) {
			FUNC1(FUNC0(&priv->tx_free_list[qos]));
			skb_to_free--;
		}
		if (take_lock)
			FUNC3(&priv->tx_free_list[qos].lock);
	}
}