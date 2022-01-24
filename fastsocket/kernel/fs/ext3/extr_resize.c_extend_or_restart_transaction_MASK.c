#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct buffer_head {int dummy; } ;
struct TYPE_6__ {int h_buffer_credits; } ;
typedef  TYPE_1__ handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT3_MAX_TRANS_DATA ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,struct buffer_head*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(handle_t *handle, int thresh,
					 struct buffer_head *bh)
{
	int err;

	if (handle->h_buffer_credits >= thresh)
		return 0;

	err = FUNC0(handle, EXT3_MAX_TRANS_DATA);
	if (err < 0)
		return err;
	if (err) {
		err = FUNC2(handle, EXT3_MAX_TRANS_DATA);
		if (err)
			return err;
		err = FUNC1(handle, bh);
		if (err)
			return err;
	}

	return 0;
}