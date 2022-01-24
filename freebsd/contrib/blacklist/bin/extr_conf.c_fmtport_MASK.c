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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FSTAR ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

__attribute__((used)) static void
FUNC3(char *b, size_t l, int port)
{
	char buf[128];

	if (port == FSTAR)
		return;

	if (b[0] == '\0' || FUNC1(b, "*") == 0) 
		FUNC0(b, l, "%d", port);
	else {
		FUNC0(buf, sizeof(buf), ":%d", port);
		FUNC2(b, buf, l);
	}
}