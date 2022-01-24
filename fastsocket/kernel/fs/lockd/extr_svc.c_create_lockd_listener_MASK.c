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
struct svc_xprt {int dummy; } ;
struct svc_serv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVC_SOCK_DEFAULTS ; 
 int /*<<< orphan*/  init_net ; 
 int FUNC0 (struct svc_serv*,char const*,int /*<<< orphan*/ *,int const,unsigned short const,int /*<<< orphan*/ ) ; 
 struct svc_xprt* FUNC1 (struct svc_serv*,char const*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_xprt*) ; 

__attribute__((used)) static int FUNC3(struct svc_serv *serv, const char *name,
				 const int family, const unsigned short port)
{
	struct svc_xprt *xprt;

	xprt = FUNC1(serv, name, family, 0);
	if (xprt == NULL)
		return FUNC0(serv, name, &init_net, family, port,
						SVC_SOCK_DEFAULTS);
	FUNC2(xprt);
	return 0;
}