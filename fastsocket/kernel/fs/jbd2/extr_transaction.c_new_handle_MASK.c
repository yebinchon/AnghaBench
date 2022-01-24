#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int h_buffer_credits; int h_ref; int /*<<< orphan*/  h_lockdep_map; } ;
typedef  TYPE_1__ handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jbd2_handle_key ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static handle_t *FUNC3(int nblocks)
{
	handle_t *handle = FUNC0(GFP_NOFS);
	if (!handle)
		return NULL;
	FUNC2(handle, 0, sizeof(*handle));
	handle->h_buffer_credits = nblocks;
	handle->h_ref = 1;

	FUNC1(&handle->h_lockdep_map, "jbd2_handle",
						&jbd2_handle_key, 0);

	return handle;
}