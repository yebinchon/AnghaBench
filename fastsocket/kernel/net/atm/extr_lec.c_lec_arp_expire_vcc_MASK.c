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
struct lec_priv {int /*<<< orphan*/  lec_arp_lock; } ;
struct lec_arp_table {int /*<<< orphan*/  next; TYPE_1__* recv_vcc; scalar_t__ vcc; int /*<<< orphan*/  timer; scalar_t__ priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  vci; int /*<<< orphan*/  vpi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lec_arp_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct lec_arp_table*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct lec_arp_table*,struct lec_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	unsigned long flags;
	struct lec_arp_table *to_remove = (struct lec_arp_table *)data;
	struct lec_priv *priv = (struct lec_priv *)to_remove->priv;

	FUNC0(&to_remove->timer);

	FUNC4("LEC_ARP %p %p: lec_arp_expire_vcc vpi:%d vci:%d\n",
		to_remove, priv,
		to_remove->vcc ? to_remove->recv_vcc->vpi : 0,
		to_remove->vcc ? to_remove->recv_vcc->vci : 0);

	FUNC5(&priv->lec_arp_lock, flags);
	FUNC1(&to_remove->next);
	FUNC6(&priv->lec_arp_lock, flags);

	FUNC2(to_remove);
	FUNC3(to_remove);
}