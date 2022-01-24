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
struct mempolicy {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPOL_F_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct mempolicy*) ; 
 int /*<<< orphan*/  FUNC1 (struct mempolicy*) ; 

struct mempolicy *FUNC2(struct mempolicy *tompol,
						struct mempolicy *frompol)
{
	if (!FUNC1(frompol))
		return frompol;

	*tompol = *frompol;
	tompol->flags &= ~MPOL_F_SHARED;	/* copy doesn't need unref */
	FUNC0(frompol);
	return tompol;
}