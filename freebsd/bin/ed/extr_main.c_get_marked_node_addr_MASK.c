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
 long ERR ; 
 char* errmsg ; 
 long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/ * mark ; 

long
FUNC2(int n)
{
	if (!FUNC1((unsigned char)n)) {
		errmsg = "invalid mark character";
		return ERR;
	}
	return FUNC0(mark[n - 'a']);
}