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
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct hlist_head*) ; 
 int NETDEV_HASHENTRIES ; 
 struct hlist_head* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hlist_head *FUNC2(void)
{
	int i;
	struct hlist_head *hash;

	hash = FUNC1(sizeof(*hash) * NETDEV_HASHENTRIES, GFP_KERNEL);
	if (hash != NULL)
		for (i = 0; i < NETDEV_HASHENTRIES; i++)
			FUNC0(&hash[i]);

	return hash;
}