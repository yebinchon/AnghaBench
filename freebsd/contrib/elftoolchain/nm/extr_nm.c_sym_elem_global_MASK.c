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
typedef  char GElf_Sym ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned char) ; 

__attribute__((used)) static int
FUNC4(char type, const GElf_Sym *sym, const char *name)
{

	FUNC2(FUNC0((unsigned char) type));

	FUNC1(sym);
	FUNC1(name);

	/* weak symbols resemble global. */
	return (FUNC3((unsigned char) type) || type == 'w');
}