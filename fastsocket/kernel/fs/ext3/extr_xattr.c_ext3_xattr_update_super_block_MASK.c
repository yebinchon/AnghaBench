#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_sbh; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT3_FEATURE_COMPAT_EXT_ATTR ; 
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(handle_t *handle,
					  struct super_block *sb)
{
	if (FUNC0(sb, EXT3_FEATURE_COMPAT_EXT_ATTR))
		return;

	if (FUNC4(handle, FUNC1(sb)->s_sbh) == 0) {
		FUNC2(sb, EXT3_FEATURE_COMPAT_EXT_ATTR);
		FUNC3(handle, FUNC1(sb)->s_sbh);
	}
}