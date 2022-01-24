#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int version; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOOKUP_EXCL ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct nameidata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct inode *dir, struct nameidata *nd)
{
	if (FUNC0(dir)->version == 2)
		return 0;
	return nd && FUNC1(nd, LOOKUP_EXCL);
}