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
struct svc_serv {scalar_t__ sv_nrthreads; struct svc_serv* sv_pools; int /*<<< orphan*/  (* sv_shutdown ) (struct svc_serv*) ;int /*<<< orphan*/  sv_temptimer; TYPE_1__* sv_program; } ;
struct TYPE_2__ {int /*<<< orphan*/  pg_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct svc_serv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_serv*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct svc_serv*) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_serv*) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_serv*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (struct svc_serv*) ; 
 int /*<<< orphan*/  FUNC9 (struct svc_serv*) ; 

void
FUNC10(struct svc_serv *serv)
{
	FUNC2("svc: svc_destroy(%s, %d)\n",
				serv->sv_program->pg_name,
				serv->sv_nrthreads);

	if (serv->sv_nrthreads) {
		if (--(serv->sv_nrthreads) != 0) {
			FUNC9(serv);
			return;
		}
	} else
		FUNC4("svc_destroy: no threads for serv=%p!\n", serv);

	FUNC1(&serv->sv_temptimer);
	/*
	 * The set of xprts (contained in the sv_tempsocks and
	 * sv_permsocks lists) is now constant, since it is modified
	 * only by accepting new sockets (done by service threads in
	 * svc_recv) or aging old ones (done by sv_temptimer), or
	 * configuration changes (excluded by whatever locking the
	 * caller is using--nfsd_mutex in the case of nfsd).  So it's
	 * safe to traverse those lists and shut everything down:
	 */
	FUNC6(serv);

	if (serv->sv_shutdown)
		serv->sv_shutdown(serv);

	FUNC0(serv);

	if (FUNC8(serv))
		FUNC7();

	FUNC3(serv->sv_pools);
	FUNC3(serv);
}