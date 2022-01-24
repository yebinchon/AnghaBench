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
union jffs2_device_node {int /*<<< orphan*/  new; int /*<<< orphan*/  old; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(union jffs2_device_node *jdev, dev_t rdev)
{
	if (FUNC4(rdev)) {
		jdev->old = FUNC0(FUNC3(rdev));
		return sizeof(jdev->old);
	} else {
		jdev->new = FUNC1(FUNC2(rdev));
		return sizeof(jdev->new);
	}
}