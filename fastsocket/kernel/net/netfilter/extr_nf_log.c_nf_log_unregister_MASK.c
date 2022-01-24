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
typedef  struct nf_logger {int /*<<< orphan*/ * list; } const nf_logger ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_log_mutex ; 
 int /*<<< orphan*/ * nf_loggers ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nf_logger const* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct nf_logger *logger)
{
	const struct nf_logger *c_logger;
	int i;

	FUNC2(&nf_log_mutex);
	for (i = 0; i < FUNC0(nf_loggers); i++) {
		c_logger = FUNC5(nf_loggers[i]);
		if (c_logger == logger)
			FUNC4(nf_loggers[i], NULL);
		FUNC1(&logger->list[i]);
	}
	FUNC3(&nf_log_mutex);

	FUNC6();
}