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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  filldir_t ;
struct TYPE_2__ {int ip_dyn_features; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, u64 *f_version,
				 loff_t *f_pos, void *priv, filldir_t filldir,
				 int *filldir_err)
{
	if (FUNC0(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL)
		return FUNC2(inode, f_version, f_pos, priv,
						filldir, filldir_err);

	return FUNC1(inode, f_version, f_pos, priv, filldir,
					filldir_err);
}