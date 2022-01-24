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
typedef  int u32 ;
typedef  size_t u16 ;
struct ip_set {struct bitmap_ip* data; } ;
struct bitmap_ip {unsigned long* members; } ;

/* Variables and functions */
 int IPSET_ERR_EXIST ; 
 int IPSET_FLAG_EXIST ; 
 unsigned long FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned long) ; 

__attribute__((used)) static int
FUNC2(struct ip_set *set, void *value, u32 timeout, u32 flags)
{
	struct bitmap_ip *map = set->data;
	unsigned long *members = map->members;
	u16 id = *(u16 *)value;

	if (FUNC1(members[id]) && !(flags & IPSET_FLAG_EXIST))
		return -IPSET_ERR_EXIST;

	members[id] = FUNC0(timeout);

	return 0;
}