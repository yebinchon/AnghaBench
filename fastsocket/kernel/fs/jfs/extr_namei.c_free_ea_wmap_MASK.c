#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_6__ {int flag; } ;
typedef  TYPE_1__ dxd_t ;
struct TYPE_7__ {TYPE_1__ ea; } ;

/* Variables and functions */
 int DXD_EXTENT ; 
 TYPE_5__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static inline void FUNC5(struct inode *inode)
{
	dxd_t *ea = &FUNC0(inode)->ea;

	if (ea->flag & DXD_EXTENT) {
		/* free EA pages from cache */
		FUNC3(inode, *ea);
		FUNC2(inode, FUNC1(ea), FUNC4(ea));
	}
	ea->flag = 0;
}