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
struct net {struct hlist_head* dev_name_head; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int NETDEV_HASHENTRIES ; 
 unsigned int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct hlist_head *FUNC2(struct net *net, const char *name)
{
	unsigned hash = FUNC0(name, FUNC1(name, IFNAMSIZ));
	return &net->dev_name_head[hash & (NETDEV_HASHENTRIES - 1)];
}