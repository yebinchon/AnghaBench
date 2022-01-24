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
struct inode {int dummy; } ;
struct ext3_xattr_search {int /*<<< orphan*/  first; } ;
struct ext3_xattr_info {int dummy; } ;
struct ext3_xattr_ibody_header {void* h_magic; } ;
struct ext3_xattr_ibody_find {int /*<<< orphan*/  iloc; struct ext3_xattr_search s; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ i_extra_isize; int /*<<< orphan*/  i_state; } ;

/* Variables and functions */
 int ENOSPC ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT3_STATE_XATTR ; 
 int /*<<< orphan*/  EXT3_XATTR_MAGIC ; 
 struct ext3_xattr_ibody_header* FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ext3_xattr_info*,struct ext3_xattr_search*) ; 

__attribute__((used)) static int
FUNC6(handle_t *handle, struct inode *inode,
		     struct ext3_xattr_info *i,
		     struct ext3_xattr_ibody_find *is)
{
	struct ext3_xattr_ibody_header *header;
	struct ext3_xattr_search *s = &is->s;
	int error;

	if (FUNC0(inode)->i_extra_isize == 0)
		return -ENOSPC;
	error = FUNC5(i, s);
	if (error)
		return error;
	header = FUNC1(inode, FUNC4(&is->iloc));
	if (!FUNC2(s->first)) {
		header->h_magic = FUNC3(EXT3_XATTR_MAGIC);
		FUNC0(inode)->i_state |= EXT3_STATE_XATTR;
	} else {
		header->h_magic = FUNC3(0);
		FUNC0(inode)->i_state &= ~EXT3_STATE_XATTR;
	}
	return 0;
}