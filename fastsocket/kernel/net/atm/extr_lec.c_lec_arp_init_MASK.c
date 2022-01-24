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
struct lec_priv {int /*<<< orphan*/  lec_arp_work; int /*<<< orphan*/  lec_arp_lock; int /*<<< orphan*/  mcast_fwds; int /*<<< orphan*/  lec_no_forward; int /*<<< orphan*/  lec_arp_empty_ones; int /*<<< orphan*/ * lec_arp_tables; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LEC_ARP_REFRESH_INTERVAL ; 
 unsigned short LEC_ARP_TABLE_SIZE ; 
 int /*<<< orphan*/  lec_arp_check_expire ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct lec_priv *priv)
{
	unsigned short i;

	for (i = 0; i < LEC_ARP_TABLE_SIZE; i++) {
		FUNC1(&priv->lec_arp_tables[i]);
	}
	FUNC1(&priv->lec_arp_empty_ones);
	FUNC1(&priv->lec_no_forward);
	FUNC1(&priv->mcast_fwds);
	FUNC3(&priv->lec_arp_lock);
	FUNC0(&priv->lec_arp_work, lec_arp_check_expire);
	FUNC2(&priv->lec_arp_work, LEC_ARP_REFRESH_INTERVAL);
}