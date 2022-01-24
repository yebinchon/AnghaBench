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
typedef  char* pointer ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int stacknleft ; 
 char* stacknxt ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

pointer
FUNC2(int nbytes)
{
	char *p;

	nbytes = FUNC0(nbytes);
	if (nbytes > stacknleft)
		FUNC1(nbytes);
	p = stacknxt;
	stacknxt += nbytes;
	stacknleft -= nbytes;
	return p;
}