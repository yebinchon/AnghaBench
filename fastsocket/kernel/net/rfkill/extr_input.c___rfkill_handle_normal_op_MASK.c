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
typedef  enum rfkill_type { ____Placeholder_rfkill_type } rfkill_type ;

/* Variables and functions */
 int FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int const,int) ; 

__attribute__((used)) static void FUNC2(const enum rfkill_type type,
				      const bool complement)
{
	bool blocked;

	blocked = FUNC0(type);
	if (complement)
		blocked = !blocked;

	FUNC1(type, blocked);
}