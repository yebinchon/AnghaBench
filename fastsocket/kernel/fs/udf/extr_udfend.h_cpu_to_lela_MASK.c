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
struct long_ad {int /*<<< orphan*/  extLocation; int /*<<< orphan*/  extLength; } ;
struct kernel_long_ad {int /*<<< orphan*/  extLocation; int /*<<< orphan*/  extLength; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct long_ad FUNC2(struct kernel_long_ad in)
{
	struct long_ad out;

	out.extLength = FUNC0(in.extLength);
	out.extLocation = FUNC1(in.extLocation);

	return out;
}