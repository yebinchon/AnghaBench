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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  b ; 
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,char*) ; 
 int FUNC7 (int,char*,int) ; 

__attribute__((used)) static void
FUNC8(int afd)
{
	ssize_t n;
	char buffer[256];

	FUNC5(buffer, 0, sizeof(buffer));

	if ((n = FUNC7(afd, buffer, sizeof(buffer))) == -1)
		FUNC2(1, "read");
	buffer[sizeof(buffer) - 1] = '\0';
	FUNC6("%s: sending %d %s\n", FUNC4(), afd, buffer);
#ifdef BLDEBUG
	blacklist_r(b, 1, afd, buffer);
#else
	FUNC0(1, afd, buffer);
#endif
	FUNC3(0);
}