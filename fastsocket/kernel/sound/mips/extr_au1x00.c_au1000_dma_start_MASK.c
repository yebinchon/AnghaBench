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
struct audio_stream {int period_size; int /*<<< orphan*/  dma; TYPE_2__* buffer; } ;
struct TYPE_4__ {TYPE_1__* next; int /*<<< orphan*/  start; } ;
struct TYPE_3__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct audio_stream *stream)
{
	if (FUNC9(!stream->buffer))
		return;

	FUNC4(stream->dma);
	if (FUNC3(stream->dma) == 0) {
		FUNC0(stream->dma);
		FUNC5(stream->dma, stream->buffer->start);
		FUNC7(stream->dma, stream->period_size >> 1);
		FUNC6(stream->dma, stream->buffer->next->start);
		FUNC8(stream->dma, stream->period_size >> 1);
	} else {
		FUNC1(stream->dma);
		FUNC6(stream->dma, stream->buffer->start);
		FUNC8(stream->dma, stream->period_size >> 1);
		FUNC5(stream->dma, stream->buffer->next->start);
		FUNC7(stream->dma, stream->period_size >> 1);
	}
	FUNC2(stream->dma);
	FUNC10(stream->dma);
}