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
struct swsusp_info {scalar_t__ pages; } ;
struct swap_map_handle {int dummy; } ;
struct snapshot_handle {int dummy; } ;
struct TYPE_2__ {unsigned int flags; int /*<<< orphan*/  image; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct snapshot_handle) ; 
 int FUNC3 (struct swap_map_handle*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct swap_map_handle*,struct snapshot_handle*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct snapshot_handle*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct swap_map_handle*) ; 
 int /*<<< orphan*/  resume_bdev ; 
 int FUNC8 (struct snapshot_handle*,int) ; 
 int FUNC9 (struct swap_map_handle*,struct swsusp_info*,int /*<<< orphan*/ *) ; 
 TYPE_1__* swsusp_header ; 

int FUNC10(unsigned int *flags_p)
{
	int error;
	struct swap_map_handle handle;
	struct snapshot_handle snapshot;
	struct swsusp_info *header;

	*flags_p = swsusp_header->flags;
	if (FUNC0(resume_bdev)) {
		FUNC6("PM: Image device not initialised\n");
		return FUNC1(resume_bdev);
	}

	FUNC5(&snapshot, 0, sizeof(struct snapshot_handle));
	error = FUNC8(&snapshot, PAGE_SIZE);
	if (error < PAGE_SIZE)
		return error < 0 ? error : -EFAULT;
	header = (struct swsusp_info *)FUNC2(snapshot);
	error = FUNC3(&handle, swsusp_header->image);
	if (!error)
		error = FUNC9(&handle, header, NULL);
	if (!error)
		error = FUNC4(&handle, &snapshot, header->pages - 1);
	FUNC7(&handle);

	if (!error)
		FUNC6("PM: Image successfully loaded\n");
	else
		FUNC6("PM: Error %d resuming\n", error);
	return error;
}