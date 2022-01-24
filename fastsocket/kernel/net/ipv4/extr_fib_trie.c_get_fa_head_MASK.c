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
struct list_head {int dummy; } ;
struct leaf_info {struct list_head falh; } ;
struct leaf {int dummy; } ;

/* Variables and functions */
 struct leaf_info* FUNC0 (struct leaf*,int) ; 

__attribute__((used)) static inline struct list_head *FUNC1(struct leaf *l, int plen)
{
	struct leaf_info *li = FUNC0(l, plen);

	if (!li)
		return NULL;

	return &li->falh;
}