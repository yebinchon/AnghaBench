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
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int init_err_counter; int max_init_attempts; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_COOKIEECHO_RESTART ; 
 int /*<<< orphan*/  SCTP_CMD_INIT_CHOOSE_TRANSPORT ; 
 int /*<<< orphan*/  SCTP_CMD_INIT_FAILED ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_SET_SK_ERR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_DELETE_TCB ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_ERROR_NO_ERROR ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T1_COOKIE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_T1_COOKIE_EXPIREDS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_chunk* FUNC7 (struct sctp_association const*,int /*<<< orphan*/ *) ; 

sctp_disposition_t FUNC8(const struct sctp_endpoint *ep,
					   const struct sctp_association *asoc,
					   const sctp_subtype_t type,
					   void *arg,
					   sctp_cmd_seq_t *commands)
{
	struct sctp_chunk *repl = NULL;
	int attempts = asoc->init_err_counter + 1;

	FUNC1("Timer T1 expired (COOKIE-ECHO).\n");
	FUNC3(SCTP_MIB_T1_COOKIE_EXPIREDS);

	if (attempts <= asoc->max_init_attempts) {
		repl = FUNC7(asoc, NULL);
		if (!repl)
			return SCTP_DISPOSITION_NOMEM;

		FUNC6(commands, SCTP_CMD_INIT_CHOOSE_TRANSPORT,
				FUNC0(repl));
		/* Issue a sideeffect to do the needed accounting. */
		FUNC6(commands, SCTP_CMD_COOKIEECHO_RESTART,
				FUNC5(SCTP_EVENT_TIMEOUT_T1_COOKIE));

		FUNC6(commands, SCTP_CMD_REPLY, FUNC0(repl));
	} else {
		FUNC6(commands, SCTP_CMD_SET_SK_ERR,
				FUNC2(ETIMEDOUT));
		FUNC6(commands, SCTP_CMD_INIT_FAILED,
				FUNC4(SCTP_ERROR_NO_ERROR));
		return SCTP_DISPOSITION_DELETE_TCB;
	}

	return SCTP_DISPOSITION_CONSUME;
}