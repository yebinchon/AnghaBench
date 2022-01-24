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
struct writeback_control {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct page*,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 

int FUNC2(struct page *page, struct writeback_control *wbc)
{
	int ret;

	ret = FUNC0(page, wbc);
	FUNC1(page);
	return ret;
}