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
struct ulist {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct ulist* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ulist*) ; 

struct ulist *FUNC2(gfp_t gfp_mask)
{
	struct ulist *ulist = FUNC0(sizeof(*ulist), gfp_mask);

	if (!ulist)
		return NULL;

	FUNC1(ulist);

	return ulist;
}