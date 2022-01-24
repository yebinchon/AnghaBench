#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int (* subbuf_actor_t ) (size_t,struct rchan_buf*,size_t,TYPE_4__*,int /*<<< orphan*/ ) ;
struct rchan_buf {int dummy; } ;
struct TYPE_10__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; struct rchan_buf* private_data; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_11__ {scalar_t__ error; int /*<<< orphan*/  written; scalar_t__ count; } ;
typedef  TYPE_4__ read_descriptor_t ;
typedef  int /*<<< orphan*/  read_actor_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_9__ {TYPE_1__* d_inode; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rchan_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rchan_buf*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rchan_buf*,size_t,int) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,struct rchan_buf*) ; 
 size_t FUNC7 (size_t,struct rchan_buf*) ; 

__attribute__((used)) static ssize_t FUNC8(struct file *filp, loff_t *ppos,
					subbuf_actor_t subbuf_actor,
					read_actor_t actor,
					read_descriptor_t *desc)
{
	struct rchan_buf *buf = filp->private_data;
	size_t read_start, avail;
	int ret;

	if (!desc->count)
		return 0;

	FUNC1(&filp->f_path.dentry->d_inode->i_mutex);
	do {
		if (!FUNC3(buf, *ppos))
			break;

		read_start = FUNC6(*ppos, buf);
		avail = FUNC7(read_start, buf);
		if (!avail)
			break;

		avail = FUNC0(desc->count, avail);
		ret = subbuf_actor(read_start, buf, avail, desc, actor);
		if (desc->error < 0)
			break;

		if (ret) {
			FUNC4(buf, read_start, ret);
			*ppos = FUNC5(buf, read_start, ret);
		}
	} while (desc->count && ret);
	FUNC2(&filp->f_path.dentry->d_inode->i_mutex);

	return desc->written;
}