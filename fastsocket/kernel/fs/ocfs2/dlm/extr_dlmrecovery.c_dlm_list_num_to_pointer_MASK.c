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
struct dlm_lock_resource {struct list_head granted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline struct list_head *
FUNC1(struct dlm_lock_resource *res, int list_num)
{
	struct list_head *ret;
	FUNC0(list_num < 0);
	FUNC0(list_num > 2);
	ret = &(res->granted);
	ret += list_num;
	return ret;
}