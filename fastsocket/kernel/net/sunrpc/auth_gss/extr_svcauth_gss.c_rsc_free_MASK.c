#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ cr_group_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
struct rsc {int /*<<< orphan*/  client_name; TYPE_2__ cred; scalar_t__ mechctx; TYPE_1__ handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct rsc *rsci)
{
	FUNC1(rsci->handle.data);
	if (rsci->mechctx)
		FUNC0(&rsci->mechctx);
	if (rsci->cred.cr_group_info)
		FUNC2(rsci->cred.cr_group_info);
	FUNC1(rsci->client_name);
}