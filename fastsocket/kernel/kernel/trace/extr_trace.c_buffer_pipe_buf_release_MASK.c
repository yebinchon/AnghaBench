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
struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {scalar_t__ private; } ;
struct buffer_ref {int /*<<< orphan*/  page; int /*<<< orphan*/  buffer; scalar_t__ ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_ref*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct pipe_inode_info *pipe,
				    struct pipe_buffer *buf)
{
	struct buffer_ref *ref = (struct buffer_ref *)buf->private;

	if (--ref->ref)
		return;

	FUNC1(ref->buffer, ref->page);
	FUNC0(ref);
	buf->private = 0;
}