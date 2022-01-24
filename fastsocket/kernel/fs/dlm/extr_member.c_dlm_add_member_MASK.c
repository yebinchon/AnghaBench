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
struct dlm_member {int nodeid; int weight; } ;
struct dlm_ls {int /*<<< orphan*/  ls_num_nodes; int /*<<< orphan*/  ls_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ls*,struct dlm_member*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_member*) ; 
 struct dlm_member* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dlm_ls *ls, int nodeid)
{
	struct dlm_member *memb;
	int w, error;

	memb = FUNC4(sizeof(struct dlm_member), GFP_NOFS);
	if (!memb)
		return -ENOMEM;

	w = FUNC2(ls->ls_name, nodeid);
	if (w < 0) {
		FUNC3(memb);
		return w;
	}

	error = FUNC1(nodeid);
	if (error < 0) {
		FUNC3(memb);
		return error;
	}

	memb->nodeid = nodeid;
	memb->weight = w;
	FUNC0(ls, memb);
	ls->ls_num_nodes++;
	return 0;
}