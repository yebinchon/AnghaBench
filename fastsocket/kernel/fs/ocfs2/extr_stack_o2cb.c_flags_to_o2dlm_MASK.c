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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DLM_LKF_CANCEL ; 
 int /*<<< orphan*/  DLM_LKF_CONVERT ; 
 int /*<<< orphan*/  DLM_LKF_FORCEUNLOCK ; 
 int /*<<< orphan*/  DLM_LKF_IVVALBLK ; 
 int /*<<< orphan*/  DLM_LKF_LOCAL ; 
 int /*<<< orphan*/  DLM_LKF_NOQUEUE ; 
 int /*<<< orphan*/  DLM_LKF_ORPHAN ; 
 int /*<<< orphan*/  DLM_LKF_TIMEOUT ; 
 int /*<<< orphan*/  DLM_LKF_VALBLK ; 
 int /*<<< orphan*/  LKM_CANCEL ; 
 int /*<<< orphan*/  LKM_CONVERT ; 
 int /*<<< orphan*/  LKM_FORCE ; 
 int /*<<< orphan*/  LKM_INVVALBLK ; 
 int /*<<< orphan*/  LKM_LOCAL ; 
 int /*<<< orphan*/  LKM_NOQUEUE ; 
 int /*<<< orphan*/  LKM_ORPHAN ; 
 int /*<<< orphan*/  LKM_TIMEOUT ; 
 int /*<<< orphan*/  LKM_VALBLK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(u32 flags)
{
	int o2dlm_flags = 0;

	FUNC1(DLM_LKF_NOQUEUE, LKM_NOQUEUE);
	FUNC1(DLM_LKF_CANCEL, LKM_CANCEL);
	FUNC1(DLM_LKF_CONVERT, LKM_CONVERT);
	FUNC1(DLM_LKF_VALBLK, LKM_VALBLK);
	FUNC1(DLM_LKF_IVVALBLK, LKM_INVVALBLK);
	FUNC1(DLM_LKF_ORPHAN, LKM_ORPHAN);
	FUNC1(DLM_LKF_FORCEUNLOCK, LKM_FORCE);
	FUNC1(DLM_LKF_TIMEOUT, LKM_TIMEOUT);
	FUNC1(DLM_LKF_LOCAL, LKM_LOCAL);

	/* map_flag() should have cleared every flag passed in */
	FUNC0(flags != 0);

	return o2dlm_flags;
}