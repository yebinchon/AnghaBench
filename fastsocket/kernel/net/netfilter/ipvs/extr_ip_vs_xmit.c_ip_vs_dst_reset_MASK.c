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
struct ip_vs_dest {struct dst_entry* dst_cache; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 

void
FUNC1(struct ip_vs_dest *dest)
{
	struct dst_entry *old_dst;

	old_dst = dest->dst_cache;
	dest->dst_cache = NULL;
	FUNC0(old_dst);
}