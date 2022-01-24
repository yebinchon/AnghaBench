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
struct netlbl_unlhsh_iface {scalar_t__ valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  netlbl_unlhsh_def ; 
 struct netlbl_unlhsh_iface* FUNC0 (int) ; 
 struct netlbl_unlhsh_iface* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct netlbl_unlhsh_iface *FUNC2(int ifindex)
{
	struct netlbl_unlhsh_iface *entry;

	entry = FUNC0(ifindex);
	if (entry != NULL)
		return entry;

	entry = FUNC1(netlbl_unlhsh_def);
	if (entry != NULL && entry->valid)
		return entry;

	return NULL;
}