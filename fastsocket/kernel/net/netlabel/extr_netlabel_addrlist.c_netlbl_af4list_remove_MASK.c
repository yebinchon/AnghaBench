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
struct netlbl_af4list {int dummy; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netlbl_af4list*) ; 
 struct netlbl_af4list* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct list_head*) ; 

struct netlbl_af4list *FUNC2(__be32 addr, __be32 mask,
					     struct list_head *head)
{
	struct netlbl_af4list *entry;

	entry = FUNC1(addr, mask, head);
	if (entry == NULL)
		return NULL;
	FUNC0(entry);
	return entry;
}