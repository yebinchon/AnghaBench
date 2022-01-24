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
struct qitem {int /*<<< orphan*/ * mailf; int /*<<< orphan*/  mailfn; int /*<<< orphan*/ * queuef; int /*<<< orphan*/  queuefn; } ;

/* Variables and functions */
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/ * FUNC0 (int,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int
FUNC4(struct qitem *it)
{
	int queuefd;

	if (it->queuef == NULL) {
		queuefd = FUNC2(it->queuefn, O_RDWR|O_NONBLOCK);
		if (queuefd < 0)
			goto fail;
		it->queuef = FUNC0(queuefd, "r+");
		if (it->queuef == NULL)
			goto fail;
	}

	if (it->mailf == NULL) {
		it->mailf = FUNC1(it->mailfn, "r");
		if (it->mailf == NULL)
			goto fail;
	}

	return (0);

fail:
	if (errno == EWOULDBLOCK)
		return (1);
	FUNC3(LOG_INFO, "could not acquire queue file: %m");
	return (-1);
}