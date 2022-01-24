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
struct lec_priv {struct hlist_head* lec_arp_tables; } ;
struct lec_arp_table {int* mac_addr; int /*<<< orphan*/  next; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,int,int,int) ; 

__attribute__((used)) static inline void
FUNC3(struct lec_priv *priv, struct lec_arp_table *entry)
{
	struct hlist_head *tmp;

	tmp = &priv->lec_arp_tables[FUNC0(entry->mac_addr[ETH_ALEN - 1])];
	FUNC1(&entry->next, tmp);

	FUNC2("LEC_ARP: Added entry:%2.2x %2.2x %2.2x %2.2x %2.2x %2.2x\n",
		0xff & entry->mac_addr[0], 0xff & entry->mac_addr[1],
		0xff & entry->mac_addr[2], 0xff & entry->mac_addr[3],
		0xff & entry->mac_addr[4], 0xff & entry->mac_addr[5]);
}