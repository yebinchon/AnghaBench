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
struct pevent_record {int dummy; } ;
struct event_format {int /*<<< orphan*/  pevent; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct pevent_record*) ; 

__attribute__((used)) static const char *
FUNC2(struct event_format *event, struct pevent_record *record)
{
	const char *comm;
	int pid;

	pid = FUNC1(event->pevent, record);
	comm = FUNC0(event->pevent, pid);
	return comm;
}