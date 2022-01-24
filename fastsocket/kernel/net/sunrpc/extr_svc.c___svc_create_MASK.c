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
struct svc_serv {int sv_nrthreads; unsigned int sv_max_payload; void (* sv_shutdown ) (struct svc_serv*) ;unsigned int sv_xdrsize; int sv_nrpools; unsigned int sp_id; struct svc_serv* sv_pools; int /*<<< orphan*/  sp_lock; int /*<<< orphan*/  sp_all_threads; int /*<<< orphan*/  sp_sockets; int /*<<< orphan*/  sp_threads; int /*<<< orphan*/  sv_name; int /*<<< orphan*/  sv_lock; int /*<<< orphan*/  sv_temptimer; int /*<<< orphan*/  sv_permsocks; int /*<<< orphan*/  sv_tempsocks; int /*<<< orphan*/  sv_max_mesg; int /*<<< orphan*/  sv_stats; struct svc_program* sv_program; } ;
struct svc_program {int pg_lovers; int pg_nvers; unsigned int pg_hivers; struct svc_program* pg_next; TYPE_1__** pg_vers; int /*<<< orphan*/  pg_stats; int /*<<< orphan*/  pg_name; } ;
struct svc_pool {int sv_nrthreads; unsigned int sv_max_payload; void (* sv_shutdown ) (struct svc_serv*) ;unsigned int sv_xdrsize; int sv_nrpools; unsigned int sp_id; struct svc_pool* sv_pools; int /*<<< orphan*/  sp_lock; int /*<<< orphan*/  sp_all_threads; int /*<<< orphan*/  sp_sockets; int /*<<< orphan*/  sp_threads; int /*<<< orphan*/  sv_name; int /*<<< orphan*/  sv_lock; int /*<<< orphan*/  sv_temptimer; int /*<<< orphan*/  sv_permsocks; int /*<<< orphan*/  sv_tempsocks; int /*<<< orphan*/  sv_max_mesg; int /*<<< orphan*/  sv_stats; struct svc_program* sv_program; } ;
struct TYPE_2__ {unsigned int vs_xdrsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned int RPCSVC_MAXPAYLOAD ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct svc_serv* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_serv*) ; 
 struct svc_serv* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void FUNC8 (struct svc_serv*) ; 
 scalar_t__ FUNC9 (struct svc_serv*) ; 
 scalar_t__ FUNC10 (struct svc_serv*) ; 

__attribute__((used)) static struct svc_serv *
FUNC11(struct svc_program *prog, unsigned int bufsize, int npools,
	     void (*shutdown)(struct svc_serv *serv))
{
	struct svc_serv	*serv;
	unsigned int vers;
	unsigned int xdrsize;
	unsigned int i;

	if (!(serv = FUNC5(sizeof(*serv), GFP_KERNEL)))
		return NULL;
	serv->sv_name      = prog->pg_name;
	serv->sv_program   = prog;
	serv->sv_nrthreads = 1;
	serv->sv_stats     = prog->pg_stats;
	if (bufsize > RPCSVC_MAXPAYLOAD)
		bufsize = RPCSVC_MAXPAYLOAD;
	serv->sv_max_payload = bufsize? bufsize : 4096;
	serv->sv_max_mesg  = FUNC6(serv->sv_max_payload + PAGE_SIZE, PAGE_SIZE);
	serv->sv_shutdown  = shutdown;
	xdrsize = 0;
	while (prog) {
		prog->pg_lovers = prog->pg_nvers-1;
		for (vers=0; vers<prog->pg_nvers ; vers++)
			if (prog->pg_vers[vers]) {
				prog->pg_hivers = vers;
				if (prog->pg_lovers > vers)
					prog->pg_lovers = vers;
				if (prog->pg_vers[vers]->vs_xdrsize > xdrsize)
					xdrsize = prog->pg_vers[vers]->vs_xdrsize;
			}
		prog = prog->pg_next;
	}
	serv->sv_xdrsize   = xdrsize;
	FUNC0(&serv->sv_tempsocks);
	FUNC0(&serv->sv_permsocks);
	FUNC2(&serv->sv_temptimer);
	FUNC7(&serv->sv_lock);

	serv->sv_nrpools = npools;
	serv->sv_pools =
		FUNC3(serv->sv_nrpools, sizeof(struct svc_pool),
			GFP_KERNEL);
	if (!serv->sv_pools) {
		FUNC4(serv);
		return NULL;
	}

	for (i = 0; i < serv->sv_nrpools; i++) {
		struct svc_pool *pool = &serv->sv_pools[i];

		FUNC1("svc: initialising pool %u for %s\n",
				i, serv->sv_name);

		pool->sp_id = i;
		FUNC0(&pool->sp_threads);
		FUNC0(&pool->sp_sockets);
		FUNC0(&pool->sp_all_threads);
		FUNC7(&pool->sp_lock);
	}

	if (FUNC10(serv)) {
	       	if (FUNC9(serv) < 0) {
			FUNC4(serv->sv_pools);
			FUNC4(serv);
			return NULL;
		}
		if (!serv->sv_shutdown)
			serv->sv_shutdown = svc_rpcb_cleanup;
	}

	return serv;
}