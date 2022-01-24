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
struct frame {unsigned int len; void* data; } ;
struct carlu {int dummy; } ;
struct ar9170_stream {scalar_t__ tag; void* payload; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct carlu*,void*,unsigned int) ; 
 scalar_t__ FUNC1 (int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,void*,unsigned int) ; 
 unsigned int FUNC4 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,void*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct carlu *ar, struct frame *frame)
{
	void *buf = frame->data;
	unsigned int len = frame->len;

	while (len >= 4) {
		struct ar9170_stream *rx_stream;
		unsigned int resplen, elen;

		rx_stream = (void *) buf;
		resplen = FUNC2(rx_stream->length);
		elen = FUNC4(resplen + 4, 4);

		if (rx_stream->tag != FUNC1(0x4e00)) {
			FUNC5("frame has no tag %p %u %x.\n",
			      buf, (int) len, rx_stream->tag);
			FUNC3(WARNING, "FRAME:", frame->data, frame->len);

			FUNC0(ar, buf, len);
			return;
		}

		FUNC0(ar, rx_stream->payload, resplen);

		len -= elen;
		buf += elen;
	}
}