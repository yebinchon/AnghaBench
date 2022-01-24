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
struct event_format {int /*<<< orphan*/  name; int /*<<< orphan*/  system; } ;
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct event_format *event,
		       regex_t *sreg, regex_t *ereg)
{
	if (sreg) {
		return !FUNC0(sreg, event->system, 0, NULL, 0) &&
			!FUNC0(ereg, event->name, 0, NULL, 0);
	}

	return !FUNC0(ereg, event->system, 0, NULL, 0) ||
		!FUNC0(ereg, event->name, 0, NULL, 0);
}