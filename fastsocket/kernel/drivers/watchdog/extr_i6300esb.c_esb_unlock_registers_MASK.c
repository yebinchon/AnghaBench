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

/* Variables and functions */
 int /*<<< orphan*/  ESB_RELOAD_REG ; 
 int /*<<< orphan*/  ESB_UNLOCK1 ; 
 int /*<<< orphan*/  ESB_UNLOCK2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(void)
{
	FUNC0(ESB_UNLOCK1, ESB_RELOAD_REG);
	FUNC0(ESB_UNLOCK2, ESB_RELOAD_REG);
}