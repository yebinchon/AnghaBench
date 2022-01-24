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
struct nsproxy {int /*<<< orphan*/  net_ns; scalar_t__ pid_ns; scalar_t__ ipc_ns; scalar_t__ uts_ns; scalar_t__ mnt_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nsproxy*) ; 
 int /*<<< orphan*/  nsproxy_cachep ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void FUNC6(struct nsproxy *ns)
{
	if (ns->mnt_ns)
		FUNC2(ns->mnt_ns);
	if (ns->uts_ns)
		FUNC5(ns->uts_ns);
	if (ns->ipc_ns)
		FUNC1(ns->ipc_ns);
	if (ns->pid_ns)
		FUNC4(ns->pid_ns);
	FUNC3(ns->net_ns);
	FUNC0(nsproxy_cachep, ns);
}