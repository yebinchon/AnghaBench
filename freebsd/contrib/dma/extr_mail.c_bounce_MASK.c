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
struct queue {char* sender; char* id; int /*<<< orphan*/  mailf; int /*<<< orphan*/  queue; } ;
struct qitem {scalar_t__* sender; char* addr; int /*<<< orphan*/  mailf; } ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  bounceq ;
struct TYPE_2__ {int features; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXPAND_WILDCARD ; 
 int /*<<< orphan*/  EX_IOERR ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int FULLBOUNCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_CRIT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  SEEK_SET ; 
 char* VERSION ; 
 scalar_t__ FUNC1 (struct queue*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct queue*,int) ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC3 (struct qitem*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,char*,char*,char*,char*,char*,scalar_t__*,char*,char*,char*,char*,char*,char*,char const*,char*) ; 
 size_t FUNC8 (char*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*,int,int,int /*<<< orphan*/ ) ; 
 char* FUNC11 () ; 
 scalar_t__ FUNC12 (struct queue*) ; 
 scalar_t__ FUNC13 (struct queue*) ; 
 char* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct queue*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 

void
FUNC19(struct qitem *it, const char *reason)
{
	struct queue bounceq;
	char line[1000];
	size_t pos;
	int error;

	/* Don't bounce bounced mails */
	if (it->sender[0] == 0) {
		FUNC18(LOG_INFO, "can not bounce a bounce message, discarding");
		FUNC4(EX_SOFTWARE);
	}

	FUNC2(&bounceq, sizeof(bounceq));
	FUNC0(&bounceq.queue);
	bounceq.sender = "";
	if (FUNC1(&bounceq, it->sender, EXPAND_WILDCARD) != 0)
		goto fail;

	if (FUNC13(&bounceq) != 0)
		goto fail;

	FUNC18(LOG_ERR, "delivery failed, bouncing as %s", bounceq.id);
	FUNC16("%s", bounceq.id);

	error = FUNC7(bounceq.mailf,
		"Received: from MAILER-DAEMON\n"
		"\tid %s\n"
		"\tby %s (%s);\n"
		"\t%s\n"
		"X-Original-To: <%s>\n"
		"From: MAILER-DAEMON <>\n"
		"To: %s\n"
		"Subject: Mail delivery failed\n"
		"Message-Id: <%s@%s>\n"
		"Date: %s\n"
		"\n"
		"This is the %s at %s.\n"
		"\n"
		"There was an error delivering your mail to <%s>.\n"
		"\n"
		"%s\n"
		"\n"
		"%s\n"
		"\n",
		bounceq.id,
		FUNC11(), VERSION,
		FUNC14(),
		it->addr,
		it->sender,
		bounceq.id, FUNC11(),
		FUNC14(),
		VERSION, FUNC11(),
		it->addr,
		reason,
		config.features & FULLBOUNCE ?
		    "Original message follows." :
		    "Message headers follow.");
	if (error < 0)
		goto fail;

	if (FUNC9(it->mailf, 0, SEEK_SET) != 0)
		goto fail;
	if (config.features & FULLBOUNCE) {
		while ((pos = FUNC8(line, 1, sizeof(line), it->mailf)) > 0) {
			if (FUNC10(line, 1, pos, bounceq.mailf) != pos)
				goto fail;
		}
	} else {
		while (!FUNC5(it->mailf)) {
			if (FUNC6(line, sizeof(line), it->mailf) == NULL)
				break;
			if (line[0] == '\n')
				break;
			if (FUNC10(line, FUNC17(line), 1, bounceq.mailf) != 1)
				goto fail;
		}
	}

	if (FUNC12(&bounceq) != 0)
		goto fail;
	/* bounce is safe */

	FUNC3(it);

	FUNC15(&bounceq);
	/* NOTREACHED */

fail:
	FUNC18(LOG_CRIT, "error creating bounce: %m");
	FUNC3(it);
	FUNC4(EX_IOERR);
}