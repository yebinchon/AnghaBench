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
struct inode {int dummy; } ;
struct ctl_table_header {int dummy; } ;
struct TYPE_2__ {scalar_t__ sysctl; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct ctl_table_header* FUNC1 (scalar_t__) ; 
 struct ctl_table_header* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ctl_table_header *FUNC3(struct inode *inode)
{
	if (FUNC0(inode)->sysctl)
		return FUNC1(FUNC0(inode)->sysctl);
	else
		return FUNC2(NULL);
}