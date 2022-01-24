#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  dtrace_attribute_t ;
struct TYPE_5__ {struct TYPE_5__* dn_list; int /*<<< orphan*/  dn_attr; } ;
typedef  TYPE_1__ dt_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  _dtrace_defattr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

dtrace_attribute_t
FUNC2(dt_node_t **pnp, uint_t idflags)
{
	dtrace_attribute_t attr = _dtrace_defattr;
	dt_node_t *dnp, *nnp;

	for (dnp = (pnp != NULL ? *pnp : NULL); dnp != NULL; dnp = nnp) {
		nnp = dnp->dn_list;
		dnp = *pnp = FUNC1(dnp, idflags);
		attr = FUNC0(attr, dnp->dn_attr);
		dnp->dn_list = nnp;
		pnp = &dnp->dn_list;
	}

	return (attr);
}