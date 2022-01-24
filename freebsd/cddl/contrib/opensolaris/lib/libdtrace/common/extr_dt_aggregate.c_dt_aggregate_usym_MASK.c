#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct ps_prochandle {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/ * dt_vector; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
struct TYPE_10__ {int /*<<< orphan*/  st_value; } ;
typedef  TYPE_2__ GElf_Sym ;

/* Variables and functions */
 int PGRAB_FORCE ; 
 int PGRAB_RDONLY ; 
 scalar_t__ FUNC0 (struct ps_prochandle*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct ps_prochandle* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct ps_prochandle*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct ps_prochandle*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct ps_prochandle*) ; 

__attribute__((used)) static void
FUNC5(dtrace_hdl_t *dtp, uint64_t *data)
{
	uint64_t pid = data[0];
	uint64_t *pc = &data[1];
	struct ps_prochandle *P;
	GElf_Sym sym;

	if (dtp->dt_vector != NULL)
		return;

	if ((P = FUNC1(dtp, pid, PGRAB_RDONLY | PGRAB_FORCE, 0)) == NULL)
		return;

	FUNC2(dtp, P);

	if (FUNC0(P, *pc, NULL, 0, &sym) == 0)
		*pc = sym.st_value;

	FUNC4(dtp, P);
	FUNC3(dtp, P);
}