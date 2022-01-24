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
struct walk_control {scalar_t__ wait; scalar_t__ write; int /*<<< orphan*/  trans; scalar_t__ pin; } ;
struct extent_buffer {int /*<<< orphan*/  len; int /*<<< orphan*/  start; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  extent_root; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct extent_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 

__attribute__((used)) static int FUNC4(struct btrfs_root *log,
			      struct extent_buffer *eb,
			      struct walk_control *wc, u64 gen)
{
	if (wc->pin)
		FUNC1(wc->trans,
						log->fs_info->extent_root,
						eb->start, eb->len);

	if (FUNC0(eb, gen, 0)) {
		if (wc->write)
			FUNC3(eb);
		if (wc->wait)
			FUNC2(eb);
	}
	return 0;
}