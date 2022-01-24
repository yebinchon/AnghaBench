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
struct lec_priv {int dummy; } ;
struct lec_arp_table {int /*<<< orphan*/  usage; int /*<<< orphan*/  tx_wait; struct lec_priv* priv; int /*<<< orphan*/  last_used; int /*<<< orphan*/  timer; int /*<<< orphan*/  next; int /*<<< orphan*/  mac_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  jiffies ; 
 struct lec_arp_table* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lec_arp_expire_arp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct lec_arp_table *FUNC7(struct lec_priv *priv,
					const unsigned char *mac_addr)
{
	struct lec_arp_table *to_return;

	to_return = FUNC2(sizeof(struct lec_arp_table), GFP_ATOMIC);
	if (!to_return) {
		FUNC4("LEC: Arp entry kmalloc failed\n");
		return NULL;
	}
	FUNC3(to_return->mac_addr, mac_addr, ETH_ALEN);
	FUNC0(&to_return->next);
	FUNC5(&to_return->timer, lec_arp_expire_arp,
			(unsigned long)to_return);
	to_return->last_used = jiffies;
	to_return->priv = priv;
	FUNC6(&to_return->tx_wait);
	FUNC1(&to_return->usage, 1);
	return to_return;
}