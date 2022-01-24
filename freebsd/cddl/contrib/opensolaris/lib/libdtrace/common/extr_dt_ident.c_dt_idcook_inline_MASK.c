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
typedef  int /*<<< orphan*/  dt_node_t ;
struct TYPE_5__ {scalar_t__ di_kind; } ;
typedef  TYPE_1__ dt_ident_t ;

/* Variables and functions */
 scalar_t__ DT_IDENT_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(dt_node_t *dnp, dt_ident_t *idp, int argc, dt_node_t *args)
{
	if (idp->di_kind == DT_IDENT_ARRAY)
		FUNC0(dnp, idp, argc, args);
	else
		FUNC1(dnp, idp, argc, args);
}