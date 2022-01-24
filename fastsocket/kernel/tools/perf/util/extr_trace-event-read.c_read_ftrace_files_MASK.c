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
 int FUNC0 (struct pevent*) ; 
 unsigned long long FUNC1 (struct pevent*) ; 
 int /*<<< orphan*/  FUNC2 (struct pevent*,unsigned long long) ; 

__attribute__((used)) static void FUNC3(struct pevent *pevent)
{
	unsigned long long size;
	int count;
	int i;

	count = FUNC0(pevent);

	for (i = 0; i < count; i++) {
		size = FUNC1(pevent);
		FUNC2(pevent, size);
	}
}