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

/* Variables and functions */
 int /*<<< orphan*/  buffer_begin ; 
 int /*<<< orphan*/  buffer_end ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  data_buffer ; 
 int empty ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0();
	buffer_begin = buffer_end = data_buffer;
	empty = 1;
}