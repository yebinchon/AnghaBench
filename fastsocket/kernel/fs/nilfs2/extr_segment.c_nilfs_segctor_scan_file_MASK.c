#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nilfs_sc_operations {int /*<<< orphan*/ * collect_bmap; int /*<<< orphan*/ * collect_node; int /*<<< orphan*/ * collect_data; } ;
struct TYPE_3__ {int flags; } ;
struct nilfs_sc_info {TYPE_1__ sc_stage; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_bmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LLONG_MAX ; 
 int NILFS_CF_NODE ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  data_buffers ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (struct inode*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct nilfs_sc_info*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_sc_info*,struct inode*) ; 
 int /*<<< orphan*/  node_buffers ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct nilfs_sc_info *sci,
				   struct inode *inode,
				   struct nilfs_sc_operations *sc_ops)
{
	FUNC1(data_buffers);
	FUNC1(node_buffers);
	int err;

	if (!(sci->sc_stage.flags & NILFS_CF_NODE)) {
		size_t n, rest = FUNC7(sci);

		n = FUNC4(
			inode, &data_buffers, rest + 1, 0, LLONG_MAX);
		if (n > rest) {
			err = FUNC6(
				sci, inode, &data_buffers,
				sc_ops->collect_data);
			FUNC0(!err); /* always receive -E2BIG or true error */
			goto break_or_fail;
		}
	}
	FUNC5(inode, &node_buffers);

	if (!(sci->sc_stage.flags & NILFS_CF_NODE)) {
		err = FUNC6(
			sci, inode, &data_buffers, sc_ops->collect_data);
		if (FUNC9(err)) {
			/* dispose node list */
			FUNC6(
				sci, inode, &node_buffers, NULL);
			goto break_or_fail;
		}
		sci->sc_stage.flags |= NILFS_CF_NODE;
	}
	/* Collect node */
	err = FUNC6(
		sci, inode, &node_buffers, sc_ops->collect_node);
	if (FUNC9(err))
		goto break_or_fail;

	FUNC3(FUNC2(inode)->i_bmap, &node_buffers);
	err = FUNC6(
		sci, inode, &node_buffers, sc_ops->collect_bmap);
	if (FUNC9(err))
		goto break_or_fail;

	FUNC8(sci, inode);
	sci->sc_stage.flags &= ~NILFS_CF_NODE;

 break_or_fail:
	return err;
}