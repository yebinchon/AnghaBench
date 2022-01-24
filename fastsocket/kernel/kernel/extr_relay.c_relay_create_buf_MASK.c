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
struct rchan_buf {struct rchan_buf* padding; struct rchan* chan; int /*<<< orphan*/  start; } ;
struct rchan {int n_subbufs; int /*<<< orphan*/  kref; int /*<<< orphan*/  alloc_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct rchan_buf*) ; 
 struct rchan_buf* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct rchan_buf* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rchan_buf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rchan_buf *FUNC5(struct rchan *chan)
{
	struct rchan_buf *buf = FUNC3(sizeof(struct rchan_buf), GFP_KERNEL);
	if (!buf)
		return NULL;

	buf->padding = FUNC1(chan->n_subbufs * sizeof(size_t *), GFP_KERNEL);
	if (!buf->padding)
		goto free_buf;

	buf->start = FUNC4(buf, &chan->alloc_size);
	if (!buf->start)
		goto free_buf;

	buf->chan = chan;
	FUNC2(&buf->chan->kref);
	return buf;

free_buf:
	FUNC0(buf->padding);
	FUNC0(buf);
	return NULL;
}