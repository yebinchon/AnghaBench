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
struct rchan_buf {unsigned int page_count; size_t cpu; struct rchan_buf* padding; int /*<<< orphan*/ * page_array; int /*<<< orphan*/  start; struct rchan* chan; } ;
struct rchan {int /*<<< orphan*/  kref; int /*<<< orphan*/ ** buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rchan_buf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  relay_destroy_channel ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rchan_buf *buf)
{
	struct rchan *chan = buf->chan;
	unsigned int i;

	if (FUNC3(buf->start)) {
		FUNC5(buf->start);
		for (i = 0; i < buf->page_count; i++)
			FUNC0(buf->page_array[i]);
		FUNC4(buf->page_array);
	}
	chan->buf[buf->cpu] = NULL;
	FUNC1(buf->padding);
	FUNC1(buf);
	FUNC2(&chan->kref, relay_destroy_channel);
}