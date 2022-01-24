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
struct fmeter {int /*<<< orphan*/  lock; scalar_t__ time; scalar_t__ val; scalar_t__ cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct fmeter *fmp)
{
	fmp->cnt = 0;
	fmp->val = 0;
	fmp->time = 0;
	FUNC0(&fmp->lock);
}