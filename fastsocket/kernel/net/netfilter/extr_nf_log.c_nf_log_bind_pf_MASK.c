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
struct nf_logger {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/ * FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_log_mutex ; 
 int /*<<< orphan*/ * nf_loggers ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nf_logger const*) ; 

int FUNC4(u_int8_t pf, const struct nf_logger *logger)
{
	FUNC1(&nf_log_mutex);
	if (FUNC0(pf, logger->name) == NULL) {
		FUNC2(&nf_log_mutex);
		return -ENOENT;
	}
	FUNC3(nf_loggers[pf], logger);
	FUNC2(&nf_log_mutex);
	return 0;
}