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
 unsigned long long FUNC0 (struct pevent*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long*,int) ; 

__attribute__((used)) static unsigned long long FUNC2(struct pevent *pevent)
{
	unsigned long long data;

	FUNC1(&data, 8);
	return FUNC0(pevent, data);
}