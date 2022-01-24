#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sv_permsocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SVC_SOCK_DEFAULTS ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* nfsd_serv ; 
 int FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(int port)
{
	int error;
	if (!FUNC0(&nfsd_serv->sv_permsocks))
		return 0;

	error = FUNC1(nfsd_serv, "udp", &init_net, PF_INET, port,
					SVC_SOCK_DEFAULTS);
	if (error < 0)
		return error;

	error = FUNC1(nfsd_serv, "tcp", &init_net, PF_INET, port,
					SVC_SOCK_DEFAULTS);
	if (error < 0)
		return error;

	return 0;
}