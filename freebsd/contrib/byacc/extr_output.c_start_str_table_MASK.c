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
 char* StaticOrR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  output_file ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* symbol_prefix ; 

__attribute__((used)) static void
FUNC2(const char *name)
{
    FUNC0(output_file,
	    "%sconst char *const %s%s[] = {",
	    StaticOrR, symbol_prefix, name);
    FUNC1();
}