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
typedef  int /*<<< orphan*/  hfa384x_t ;
typedef  int /*<<< orphan*/  hfa384x_metacmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  DOWAIT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC1(hfa384x_t *hw, hfa384x_metacmd_t *cmd)
{
	return FUNC0(hw, DOWAIT, cmd, NULL, NULL, NULL);
}