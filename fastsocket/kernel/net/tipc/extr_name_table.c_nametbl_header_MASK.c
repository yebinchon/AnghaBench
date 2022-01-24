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
typedef  int u32 ;
struct print_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct print_buf*,char*) ; 

__attribute__((used)) static void FUNC1(struct print_buf *buf, u32 depth)
{
	FUNC0(buf, "Type       ");

	if (depth > 1)
		FUNC0(buf, "Lower      Upper      ");
	if (depth > 2)
		FUNC0(buf, "Port Identity              ");
	if (depth > 3)
		FUNC0(buf, "Publication");

	FUNC0(buf, "\n-----------");

	if (depth > 1)
		FUNC0(buf, "--------------------- ");
	if (depth > 2)
		FUNC0(buf, "-------------------------- ");
	if (depth > 3)
		FUNC0(buf, "------------------");

	FUNC0(buf, "\n");
}