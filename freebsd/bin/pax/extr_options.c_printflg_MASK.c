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
 char* argv0 ; 
 int FUNC0 (unsigned int) ; 
 int* flgch ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(unsigned int flg)
{
	int nxt;
	int pos = 0;

	(void)FUNC1(stderr,"%s: Invalid combination of options:", argv0);
	while ((nxt = FUNC0(flg)) != 0) {
		flg = flg >> nxt;
		pos += nxt;
		(void)FUNC1(stderr, " -%c", flgch[pos-1]);
	}
	(void)FUNC2('\n', stderr);
}