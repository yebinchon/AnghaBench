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
struct ubifs_nnode {int dummy; } ;
struct ubifs_info {struct ubifs_nnode* nroot; } ;

/* Variables and functions */
 struct ubifs_nnode* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ubifs_nnode*) ; 
 int UBIFS_LPT_FANOUT ; 
 int UBIFS_LPT_FANOUT_SHIFT ; 
 struct ubifs_nnode* FUNC2 (struct ubifs_info*,struct ubifs_nnode*,int) ; 
 int FUNC3 (struct ubifs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ubifs_nnode *FUNC4(struct ubifs_info *c, int i)
{
	int err, iip;
	struct ubifs_nnode *nnode;

	if (!c->nroot) {
		err = FUNC3(c, NULL, 0);
		if (err)
			return FUNC0(err);
	}
	nnode = c->nroot;
	while (1) {
		iip = i & (UBIFS_LPT_FANOUT - 1);
		i >>= UBIFS_LPT_FANOUT_SHIFT;
		if (!i)
			break;
		nnode = FUNC2(c, nnode, iip);
		if (FUNC1(nnode))
			return nnode;
	}
	return nnode;
}