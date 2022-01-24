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
typedef  size_t u_int8_t ;
struct nf_logger {int /*<<< orphan*/ * list; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int NFPROTO_NUMPROTO ; 
 size_t NFPROTO_UNSPEC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_log_mutex ; 
 int /*<<< orphan*/ * nf_loggers ; 
 int /*<<< orphan*/ * nf_loggers_l ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct nf_logger*) ; 
 struct nf_logger* FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(u_int8_t pf, struct nf_logger *logger)
{
	const struct nf_logger *llog;
	int i;

	if (pf >= FUNC0(nf_loggers))
		return -EINVAL;

	for (i = 0; i < FUNC0(logger->list); i++)
		FUNC1(&logger->list[i]);

	FUNC3(&nf_log_mutex);

	if (pf == NFPROTO_UNSPEC) {
		for (i = NFPROTO_UNSPEC; i < NFPROTO_NUMPROTO; i++)
			FUNC2(&(logger->list[i]), &(nf_loggers_l[i]));
	} else {
		/* register at end of list to honor first register win */
		FUNC2(&logger->list[pf], &nf_loggers_l[pf]);
		llog = FUNC6(nf_loggers[pf]);
		if (llog == NULL)
			FUNC5(nf_loggers[pf], logger);
	}

	FUNC4(&nf_log_mutex);

	return 0;
}