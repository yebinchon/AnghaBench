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
struct TYPE_2__ {int /*<<< orphan*/  tree_root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct super_block *sb)
{
	(void)FUNC1(FUNC0(sb)->tree_root);
	/* FIXME: need to fix VFS to return error? */
	/* AV: return it _where_?  ->put_super() can be triggered by any number
	 * of async events, up to and including delivery of SIGKILL to the
	 * last process that kept it busy.  Or segfault in the aforementioned
	 * process...  Whom would you report that to?
	 */
}