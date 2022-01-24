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
struct adsp_info {int event_backlog_max; int events_received; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (struct adsp_info*) ; 
 struct adsp_info adsp_info ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *data)
{
	struct adsp_info *info = &adsp_info;
	int cnt = 0;
	for (cnt = 0; cnt < 10; cnt++)
		if (FUNC0(info) < 0)
			break;
	if (cnt > info->event_backlog_max)
		info->event_backlog_max = cnt;
	info->events_received += cnt;
	if (cnt == 10)
		FUNC1("adsp: too many (%d) events for single irq!\n", cnt);
	return IRQ_HANDLED;
}