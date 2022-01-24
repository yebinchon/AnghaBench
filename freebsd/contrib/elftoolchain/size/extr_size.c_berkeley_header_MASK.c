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
 scalar_t__ RADIX_OCTAL ; 
 scalar_t__ bss_size ; 
 scalar_t__ data_size ; 
 scalar_t__ radix ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ text_size ; 

__attribute__((used)) static void
FUNC3(void)
{
	static int printed;

	text_size = data_size = bss_size = 0;
	if (!printed) {
		FUNC1(6);
		FUNC0();
		FUNC2("text", 0);
		FUNC2("data", 1);
		FUNC2("bss", 2);
		if (radix == RADIX_OCTAL)
			FUNC2("oct", 3);
		else
			FUNC2("dec", 3);
		FUNC2("hex", 4);
		FUNC2("filename", 5);
		printed = 1;
	}
}