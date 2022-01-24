#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct io_ctl {int size; struct btrfs_free_space_entry* cur; int /*<<< orphan*/  index; } ;
struct btrfs_free_space_entry {int /*<<< orphan*/  type; int /*<<< orphan*/  bytes; int /*<<< orphan*/  offset; } ;
struct btrfs_free_space {void* bytes; void* offset; } ;

/* Variables and functions */
 int FUNC0 (struct io_ctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct io_ctl*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct io_ctl *io_ctl,
			    struct btrfs_free_space *entry, u8 *type)
{
	struct btrfs_free_space_entry *e;
	int ret;

	if (!io_ctl->cur) {
		ret = FUNC0(io_ctl, io_ctl->index);
		if (ret)
			return ret;
	}

	e = io_ctl->cur;
	entry->offset = FUNC2(e->offset);
	entry->bytes = FUNC2(e->bytes);
	*type = e->type;
	io_ctl->cur += sizeof(struct btrfs_free_space_entry);
	io_ctl->size -= sizeof(struct btrfs_free_space_entry);

	if (io_ctl->size >= sizeof(struct btrfs_free_space_entry))
		return 0;

	FUNC1(io_ctl);

	return 0;
}