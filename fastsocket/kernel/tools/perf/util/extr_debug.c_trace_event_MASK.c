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
struct TYPE_2__ {int size; } ;
union perf_event {TYPE_1__ header; } ;

/* Variables and functions */
 char* PERF_COLOR_BLUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char*,...) ; 
 int /*<<< orphan*/  dump_trace ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC3(union perf_event *event)
{
	unsigned char *raw_event = (void *)event;
	const char *color = PERF_COLOR_BLUE;
	int i, j;

	if (!dump_trace)
		return;

	FUNC2(".");
	FUNC0(stdout, color, "\n. ... raw event: size %d bytes\n",
		      event->header.size);

	for (i = 0; i < event->header.size; i++) {
		if ((i & 15) == 0) {
			FUNC2(".");
			FUNC0(stdout, color, "  %04x: ", i);
		}

		FUNC0(stdout, color, " %02x", raw_event[i]);

		if (((i & 15) == 15) || i == event->header.size-1) {
			FUNC0(stdout, color, "  ");
			for (j = 0; j < 15-(i & 15); j++)
				FUNC0(stdout, color, "   ");
			for (j = i & ~15; j <= i; j++) {
				FUNC0(stdout, color, "%c",
					      FUNC1(raw_event[j]) ?
					      raw_event[j] : '.');
			}
			FUNC0(stdout, color, "\n");
		}
	}
	FUNC2(".\n");
}