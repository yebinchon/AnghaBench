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
typedef  scalar_t__ __u64 ;
struct TYPE_2__ {scalar_t__ mi_first_entry_offset; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode const*) ; 

__attribute__((used)) static unsigned long
FUNC3(const struct inode *cpfile, __u64 cno)
{
	__u64 tcno = cno + FUNC0(cpfile)->mi_first_entry_offset - 1;
	FUNC1(tcno, FUNC2(cpfile));
	return (unsigned long)tcno;
}