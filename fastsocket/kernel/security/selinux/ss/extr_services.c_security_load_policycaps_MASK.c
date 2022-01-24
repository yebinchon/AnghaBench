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
struct TYPE_2__ {int /*<<< orphan*/  policycaps; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLICYDB_CAPABILITY_NETPEER ; 
 int /*<<< orphan*/  POLICYDB_CAPABILITY_OPENPERM ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ policydb ; 
 void* selinux_policycap_netpeer ; 
 void* selinux_policycap_openperm ; 

__attribute__((used)) static void FUNC1(void)
{
	selinux_policycap_netpeer = FUNC0(&policydb.policycaps,
						  POLICYDB_CAPABILITY_NETPEER);
	selinux_policycap_openperm = FUNC0(&policydb.policycaps,
						  POLICYDB_CAPABILITY_OPENPERM);
}