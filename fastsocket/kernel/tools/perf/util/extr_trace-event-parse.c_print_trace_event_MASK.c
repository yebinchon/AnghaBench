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
struct pevent {int dummy; } ;
struct event_format {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_format*,int,void*,int) ; 
 struct event_format* FUNC1 (struct pevent*,int) ; 
 int FUNC2 (struct pevent*,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

void FUNC4(struct pevent *pevent, int cpu, void *data, int size)
{
	int type = FUNC2(pevent, data);
	struct event_format *event = FUNC1(pevent, type);

	if (!event) {
		FUNC3("ug! no event found for type %d", type);
		return;
	}

	FUNC0(event, cpu, data, size);
}