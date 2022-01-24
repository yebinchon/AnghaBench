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
 int KSYM_SYMBOL_LEN ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 

void FUNC2(const char *fmt, unsigned long address)
{
	char buffer[KSYM_SYMBOL_LEN];

	FUNC1(buffer, address);

	FUNC0(fmt, buffer);
}