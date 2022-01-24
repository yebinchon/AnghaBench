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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct queue {int /*<<< orphan*/  queue; } ;
struct qitem {char* mailfn; } ;
struct dirent {char* d_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  spooldir; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EX_NOINPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char**,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct queue*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 struct dirent* FUNC8 (int /*<<< orphan*/ *) ; 
 struct qitem* FUNC9 (struct queue*,char*) ; 
 scalar_t__ FUNC10 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*,char*) ; 

int
FUNC12(struct queue *queue)
{
	struct stat sb;
	struct qitem *it;
	DIR *spooldir;
	struct dirent *de;
	char *queuefn;
	char *mailfn;

	FUNC3(queue, sizeof(*queue));
	FUNC0(&queue->queue);

	spooldir = FUNC7(config.spooldir);
	if (spooldir == NULL)
		FUNC5(EX_NOINPUT, "reading queue");

	while ((de = FUNC8(spooldir)) != NULL) {
		queuefn = NULL;
		mailfn = NULL;

		/* ignore non-queue files */
		if (de->d_name[0] != 'Q')
			continue;
		if (FUNC2(&queuefn, "%d/Q%s", config.spooldir, de->d_name + 1) < 0)
			goto fail;
		if (FUNC2(&mailfn, "%d/M%s", config.spooldir, de->d_name + 1) < 0)
			goto fail;

		/*
		 * Some file systems don't provide a de->d_type, so we have to
		 * do an explicit stat on the queue file.
		 * Move on if it turns out to be something else than a file.
		 */
		if (FUNC10(queuefn, &sb) != 0)
			goto skip_item;
		if (!FUNC1(sb.st_mode)) {
			errno = EINVAL;
			goto skip_item;
		}

		if (FUNC10(mailfn, &sb) != 0)
			goto skip_item;

		it = FUNC9(queue, queuefn);
		if (it == NULL)
			goto skip_item;

		it->mailfn = mailfn;
		continue;

skip_item:
		FUNC11(LOG_INFO, "could not pick up queue file: `%s'/`%s': %m", queuefn, mailfn);
		if (queuefn != NULL)
			FUNC6(queuefn);
		if (mailfn != NULL)
			FUNC6(mailfn);
	}
	FUNC4(spooldir);
	return (0);

fail:
	return (-1);
}