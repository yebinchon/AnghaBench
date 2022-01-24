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
struct sockaddr {int dummy; } ;
struct rpc_xprt {void** address_strings; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t RPC_DISPLAY_HEX_PORT ; 
 size_t RPC_DISPLAY_PORT ; 
 void* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 struct sockaddr* FUNC3 (struct rpc_xprt*) ; 

__attribute__((used)) static void FUNC4(struct rpc_xprt *xprt)
{
	struct sockaddr *sap = FUNC3(xprt);
	char buf[128];

	(void)FUNC2(buf, sizeof(buf), "%u", FUNC1(sap));
	xprt->address_strings[RPC_DISPLAY_PORT] = FUNC0(buf, GFP_KERNEL);

	(void)FUNC2(buf, sizeof(buf), "%4hx", FUNC1(sap));
	xprt->address_strings[RPC_DISPLAY_HEX_PORT] = FUNC0(buf, GFP_KERNEL);
}