#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct videobuf_queue {int /*<<< orphan*/  dev; } ;
struct videobuf_dmabuf {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
struct cx25821_buffer {TYPE_1__ vb; int /*<<< orphan*/  risc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIDEOBUF_NEEDS_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct videobuf_dmabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct videobuf_queue*,struct videobuf_dmabuf*) ; 
 struct videobuf_dmabuf* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct videobuf_queue *q, struct cx25821_buffer *buf)
{
	struct videobuf_dmabuf *dma = FUNC6(&buf->vb);

	FUNC0(FUNC2());
	FUNC7(&buf->vb, 0, 0);
	FUNC5(q, dma);
	FUNC4(dma);
	FUNC1(FUNC3(q->dev), &buf->risc);
	buf->vb.state = VIDEOBUF_NEEDS_INIT;
}