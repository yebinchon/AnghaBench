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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,...) ; 
 char* FUNC2 (unsigned char,unsigned char) ; 
 char* FUNC3 (unsigned char) ; 

void FUNC4(
		unsigned char key,
		unsigned char asc,
		unsigned char ascq) {

	const char *what, *keystr;

	keystr = FUNC3(key);
	what = FUNC2(asc, ascq);

	if (keystr == NULL)
		keystr = "(Unknown Key)";
	if (what == NULL)
		what = "(unknown ASC/ASCQ)";

	FUNC0("%s: ", keystr);
	FUNC1(what, ascq);
	FUNC1("\n");
}