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
struct TYPE_2__ {int /*<<< orphan*/ * priv_root; int /*<<< orphan*/ * xattr_root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 

__attribute__((used)) static void FUNC4(struct super_block *s)
{
	if (FUNC0(s)) {
		if (FUNC0(s)->xattr_root) {
			FUNC1(FUNC0(s)->xattr_root);
			FUNC2(FUNC0(s)->xattr_root);
			FUNC0(s)->xattr_root = NULL;
		}
		if (FUNC0(s)->priv_root) {
			FUNC1(FUNC0(s)->priv_root);
			FUNC2(FUNC0(s)->priv_root);
			FUNC0(s)->priv_root = NULL;
		}
	}

	FUNC3(s);
}