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
struct queue {int /*<<< orphan*/  queue; } ;
struct qitem {char* sender; char* queueid; char* queuefn; } ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  itmqueue ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct qitem* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct qitem*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ FUNC3 (struct queue*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct queue*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char) ; 
 int /*<<< orphan*/  next ; 
 char* FUNC11 (char*,char) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 char* FUNC13 (char*) ; 
 int FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char*,...) ; 

__attribute__((used)) static struct qitem *
FUNC16(struct queue *queue, char *queuefn)
{
	char line[1000];
	struct queue itmqueue;
	FILE *queuef = NULL;
	char *s;
	char *queueid = NULL, *sender = NULL, *addr = NULL;
	struct qitem *it = NULL;

	FUNC4(&itmqueue, sizeof(itmqueue));
	FUNC1(&itmqueue.queue);

	queuef = FUNC8(queuefn, "r");
	if (queuef == NULL)
		goto out;

	while (!FUNC6(queuef)) {
		if (FUNC7(line, sizeof(line), queuef) == NULL || line[0] == 0)
			break;
		line[FUNC14(line) - 1] = 0;	/* chop newline */

		s = FUNC11(line, ':');
		if (s == NULL)
			goto malformed;
		*s = 0;

		s++;
		while (FUNC10(*s))
			s++;

		s = FUNC13(s);
		if (s == NULL)
			goto malformed;

		if (FUNC12(line, "ID") == 0) {
			queueid = s;
		} else if (FUNC12(line, "Sender") == 0) {
			sender = s;
		} else if (FUNC12(line, "Recipient") == 0) {
			addr = s;
		} else {
			FUNC15(LOG_DEBUG, "ignoring unknown queue info `%s' in `%s'",
			       line, queuefn);
			FUNC9(s);
		}
	}

	if (queueid == NULL || sender == NULL || addr == NULL ||
	    *queueid == 0 || *addr == 0) {
malformed:
		errno = EINVAL;
		FUNC15(LOG_ERR, "malformed queue file `%s'", queuefn);
		goto out;
	}

	if (FUNC3(&itmqueue, addr, 0) != 0)
		goto out;

	it = FUNC0(&itmqueue.queue);
	it->sender = sender; sender = NULL;
	it->queueid = queueid; queueid = NULL;
	it->queuefn = queuefn; queuefn = NULL;
	FUNC2(&queue->queue, it, next);

out:
	if (sender != NULL)
		FUNC9(sender);
	if (queueid != NULL)
		FUNC9(queueid);
	if (addr != NULL)
		FUNC9(addr);
	if (queuef != NULL)
		FUNC5(queuef);

	return (it);
}