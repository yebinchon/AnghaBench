#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint_t ;
struct TYPE_6__ {int /*<<< orphan*/  dn_args; int /*<<< orphan*/  dn_ident; } ;
typedef  TYPE_1__ dt_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static dt_node_t *
FUNC2(dt_node_t *dnp, uint_t idflags)
{
	FUNC1(dnp,
	    FUNC0(dnp, dnp->dn_ident, &dnp->dn_args));

	return (dnp);
}