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
struct page {scalar_t__ private; TYPE_1__* mapping; } ;
struct extent_buffer {int read_mirror; int /*<<< orphan*/  start; int /*<<< orphan*/  bflags; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_4__ {struct btrfs_root* root; } ;
struct TYPE_3__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  EXTENT_BUFFER_IOERR ; 
 int /*<<< orphan*/  EXTENT_BUFFER_READAHEAD ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_root*,struct extent_buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct page *page, int failed_mirror)
{
	struct extent_buffer *eb;
	struct btrfs_root *root = FUNC0(page->mapping->host)->root;

	eb = (struct extent_buffer *)page->private;
	FUNC2(EXTENT_BUFFER_IOERR, &eb->bflags);
	eb->read_mirror = failed_mirror;
	if (FUNC3(EXTENT_BUFFER_READAHEAD, &eb->bflags))
		FUNC1(root, eb, eb->start, -EIO);
	return -EIO;	/* we fixed nothing */
}