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
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 struct list_head* FUNC0 (struct list_head*,scalar_t__) ; 

struct list_head *FUNC1(struct list_head *head, loff_t pos)
{
	if (!pos)
		return head;

	return FUNC0(head, pos - 1);
}