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
struct cpu_key {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ TYPE_DIRENTRY ; 
 scalar_t__ FUNC2 (struct cpu_key*) ; 
 scalar_t__ FUNC3 (struct cpu_key*) ; 
 char* off_buf ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned long long,...) ; 

__attribute__((used)) static char *FUNC5(struct cpu_key *key)
{
	if (FUNC3(key) == TYPE_DIRENTRY)
		FUNC4(off_buf, "%Lu(%Lu)",
			(unsigned long long)
			FUNC1(FUNC2(key)),
			(unsigned long long)
			FUNC0(FUNC2(key)));
	else
		FUNC4(off_buf, "0x%Lx",
			(unsigned long long)FUNC2(key));
	return off_buf;
}