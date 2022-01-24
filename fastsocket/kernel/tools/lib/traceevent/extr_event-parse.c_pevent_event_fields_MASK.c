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
struct format_field {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fields; int /*<<< orphan*/  nr_fields; } ;
struct event_format {TYPE_1__ format; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct format_field** FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct format_field **FUNC1(struct event_format *event)
{
	return FUNC0("event", event->name,
				event->format.nr_fields,
				event->format.fields);
}