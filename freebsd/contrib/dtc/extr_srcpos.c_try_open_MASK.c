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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,char const*) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static char *FUNC4(const char *dirname, const char *fname, FILE **fp)
{
	char *fullname;

	if (!dirname || fname[0] == '/')
		fullname = FUNC3(fname);
	else
		fullname = FUNC2(dirname, fname);

	*fp = FUNC0(fullname, "rb");
	if (!*fp) {
		FUNC1(fullname);
		fullname = NULL;
	}

	return fullname;
}