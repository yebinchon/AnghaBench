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
struct exofs_i_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct exofs_i_info*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct exofs_i_info*) ; 

__attribute__((used)) static inline int FUNC3(struct exofs_i_info *oi)
{
	if (FUNC1(FUNC2(oi)))
		return 0;

	return FUNC0(oi);
}