#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_4__ {scalar_t__ h_buffer_credits; } ;
typedef  TYPE_1__ handle_t ;

/* Variables and functions */
 scalar_t__ EXT3_RESERVE_TRANS_BLOCKS ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(handle_t *handle, struct inode *inode)
{
	if (handle->h_buffer_credits > EXT3_RESERVE_TRANS_BLOCKS)
		return 0;
	if (!FUNC1(handle, FUNC0(inode)))
		return 0;
	return 1;
}