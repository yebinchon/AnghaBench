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
struct fmeter {int /*<<< orphan*/  lock; scalar_t__ cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM_MAXCNT ; 
 scalar_t__ FM_SCALE ; 
 int /*<<< orphan*/  FUNC0 (struct fmeter*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct fmeter *fmp)
{
	FUNC2(&fmp->lock);
	FUNC0(fmp);
	fmp->cnt = FUNC1(FM_MAXCNT, fmp->cnt + FM_SCALE);
	FUNC3(&fmp->lock);
}