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
 char* FUNC1 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (struct pevent*,char*,unsigned long long,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long long) ; 

__attribute__((used)) static void FUNC4(struct pevent *pevent, char *sys,
			    unsigned long long size)
{
	char *buf;

	buf = FUNC1(size);
	FUNC3(buf, size);
	FUNC2(pevent, buf, size, sys);
	FUNC0(buf);
}