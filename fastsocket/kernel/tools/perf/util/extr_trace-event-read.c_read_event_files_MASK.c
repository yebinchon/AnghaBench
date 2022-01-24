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
 int /*<<< orphan*/  FUNC2 (struct pevent*,char*,unsigned long long) ; 
 char* FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct pevent *pevent)
{
	unsigned long long size;
	char *sys;
	int systems;
	int count;
	int i,x;

	systems = FUNC0(pevent);

	for (i = 0; i < systems; i++) {
		sys = FUNC3();

		count = FUNC0(pevent);
		for (x=0; x < count; x++) {
			size = FUNC1(pevent);
			FUNC2(pevent, sys, size);
		}
	}
}