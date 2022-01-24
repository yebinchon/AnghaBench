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
struct nfs4_state {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fmode; scalar_t__ open_flags; } ;
struct nfs4_opendata {int /*<<< orphan*/  c_res; int /*<<< orphan*/  o_res; TYPE_1__ o_arg; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfs4_state*) ; 
 int FUNC1 (struct nfs4_state*) ; 
 int FUNC2 (struct nfs4_opendata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs4_opendata*) ; 
 struct nfs4_state* FUNC6 (struct nfs4_opendata*) ; 

__attribute__((used)) static int FUNC7(struct nfs4_opendata *opendata, fmode_t fmode, struct nfs4_state **res)
{
	struct nfs4_state *newstate;
	int ret;

	opendata->o_arg.open_flags = 0;
	opendata->o_arg.fmode = fmode;
	FUNC3(&opendata->o_res, 0, sizeof(opendata->o_res));
	FUNC3(&opendata->c_res, 0, sizeof(opendata->c_res));
	FUNC5(opendata);
	ret = FUNC2(opendata);
	if (ret != 0)
		return ret; 
	newstate = FUNC6(opendata);
	if (FUNC0(newstate))
		return FUNC1(newstate);
	FUNC4(newstate, fmode);
	*res = newstate;
	return 0;
}