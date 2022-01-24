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
struct rpc_clnt {int dummy; } ;
struct gss_upcall_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gss_upcall_msg*) ; 
 int /*<<< orphan*/  FUNC1 (struct gss_upcall_msg*,struct rpc_clnt*,int) ; 
 scalar_t__ pipe_version ; 

__attribute__((used)) static void FUNC2(struct gss_upcall_msg *gss_msg,
				struct rpc_clnt *clnt, int machine_cred)
{
	if (pipe_version == 0)
		FUNC0(gss_msg);
	else /* pipe_version == 1 */
		FUNC1(gss_msg, clnt, machine_cred);
}