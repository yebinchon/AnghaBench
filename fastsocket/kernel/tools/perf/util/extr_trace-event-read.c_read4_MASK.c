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
 unsigned int FUNC0 (struct pevent*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,int) ; 

__attribute__((used)) static unsigned int FUNC2(struct pevent *pevent)
{
	unsigned int data;

	FUNC1(&data, 4);
	return FUNC0(pevent, data);
}