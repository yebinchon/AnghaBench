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
struct sec_path {int len; int /*<<< orphan*/ * xvec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sec_path*) ; 
 int /*<<< orphan*/  secpath_cachep ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct sec_path *sp)
{
	int i;
	for (i = 0; i < sp->len; i++)
		FUNC1(sp->xvec[i]);
	FUNC0(secpath_cachep, sp);
}