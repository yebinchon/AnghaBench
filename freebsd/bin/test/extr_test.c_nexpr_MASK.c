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
typedef  enum token { ____Placeholder_token } token ;

/* Variables and functions */
 int UNOT ; 
 scalar_t__ nargc ; 
 int FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * t_wp ; 

__attribute__((used)) static int
FUNC2(enum token n)
{
	if (n == UNOT)
		return !FUNC2(FUNC1(nargc > 0 ? (--nargc, *++t_wp) : NULL));
	return FUNC0(n);
}