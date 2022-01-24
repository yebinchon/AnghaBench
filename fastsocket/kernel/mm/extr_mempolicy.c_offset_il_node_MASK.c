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
struct vm_area_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nodes; } ;
struct mempolicy {TYPE_1__ v; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 

__attribute__((used)) static unsigned FUNC3(struct mempolicy *pol,
		struct vm_area_struct *vma, unsigned long off)
{
	unsigned nnodes = FUNC1(pol->v.nodes);
	unsigned target;
	int c;
	int nid = -1;

	if (!nnodes)
		return FUNC2();
	target = (unsigned int)off % nnodes;
	c = 0;
	do {
		nid = FUNC0(nid, pol->v.nodes);
		c++;
	} while (c <= target);
	return nid;
}