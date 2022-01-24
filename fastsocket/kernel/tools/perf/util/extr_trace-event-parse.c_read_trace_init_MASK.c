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

/* Variables and functions */
 int /*<<< orphan*/  PEVENT_NSEC_OUTPUT ; 
 struct pevent* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pevent*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pevent*,int) ; 

struct pevent *FUNC4(int file_bigendian, int host_bigendian)
{
	struct pevent *pevent = FUNC0();

	if (pevent != NULL) {
		FUNC2(pevent, PEVENT_NSEC_OUTPUT);
		FUNC1(pevent, file_bigendian);
		FUNC3(pevent, host_bigendian);
	}

	return pevent;
}