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
struct svc_xprt {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_5__ {int /*<<< orphan*/  sv_nrthreads; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  SVC_SOCK_ANONYMOUS ; 
 int USHORT_MAX ; 
 int /*<<< orphan*/  init_net ; 
 int FUNC0 () ; 
 TYPE_1__* nfsd_serv ; 
 int FUNC1 (char*,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_xprt*) ; 
 int FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct svc_xprt* FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_xprt*) ; 

__attribute__((used)) static ssize_t FUNC7(char *buf)
{
	char transport[16];
	struct svc_xprt *xprt;
	int port, err;

	if (FUNC1(buf, "%15s %4u", transport, &port) != 2)
		return -EINVAL;

	if (port < 1 || port > USHORT_MAX)
		return -EINVAL;

	err = FUNC0();
	if (err != 0)
		return err;

	err = FUNC3(nfsd_serv, transport, &init_net,
				PF_INET, port, SVC_SOCK_ANONYMOUS);
	if (err < 0)
		goto out_err;

	err = FUNC3(nfsd_serv, transport, &init_net,
				PF_INET6, port, SVC_SOCK_ANONYMOUS);
	if (err < 0 && err != -EAFNOSUPPORT)
		goto out_close;

	/* Decrease the count, but don't shut down the service */
	nfsd_serv->sv_nrthreads--;
	return 0;
out_close:
	xprt = FUNC5(nfsd_serv, transport, PF_INET, port);
	if (xprt != NULL) {
		FUNC2(xprt);
		FUNC6(xprt);
	}
out_err:
	FUNC4(nfsd_serv);
	return err;
}