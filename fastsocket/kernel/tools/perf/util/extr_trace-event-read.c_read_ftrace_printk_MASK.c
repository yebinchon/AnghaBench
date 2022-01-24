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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct pevent*,char*,unsigned int) ; 
 unsigned int FUNC3 (struct pevent*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct pevent *pevent)
{
	unsigned int size;
	char *buf;

	size = FUNC3(pevent);
	if (!size)
		return;

	buf = FUNC1(size);
	FUNC4(buf, size);

	FUNC2(pevent, buf, size);

	FUNC0(buf);
}