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
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_bind_addr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bind_addr; } ;
struct sctp_association {int init_err_counter; int max_init_attempts; TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_INIT_CHOOSE_TRANSPORT ; 
 int /*<<< orphan*/  SCTP_CMD_INIT_FAILED ; 
 int /*<<< orphan*/  SCTP_CMD_INIT_RESTART ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_SET_SK_ERR ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_DELETE_TCB ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_ERROR_NO_ERROR ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T1_INIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_T1_INIT_EXPIREDS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_chunk* FUNC7 (struct sctp_association const*,struct sctp_bind_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

sctp_disposition_t FUNC8(const struct sctp_endpoint *ep,
					   const struct sctp_association *asoc,
					   const sctp_subtype_t type,
					   void *arg,
					   sctp_cmd_seq_t *commands)
{
	struct sctp_chunk *repl = NULL;
	struct sctp_bind_addr *bp;
	int attempts = asoc->init_err_counter + 1;

	FUNC1("Timer T1 expired (INIT).\n");
	FUNC3(SCTP_MIB_T1_INIT_EXPIREDS);

	if (attempts <= asoc->max_init_attempts) {
		bp = (struct sctp_bind_addr *) &asoc->base.bind_addr;
		repl = FUNC7(asoc, bp, GFP_ATOMIC, 0);
		if (!repl)
			return SCTP_DISPOSITION_NOMEM;

		/* Choose transport for INIT. */
		FUNC6(commands, SCTP_CMD_INIT_CHOOSE_TRANSPORT,
				FUNC0(repl));

		/* Issue a sideeffect to do the needed accounting. */
		FUNC6(commands, SCTP_CMD_INIT_RESTART,
				FUNC5(SCTP_EVENT_TIMEOUT_T1_INIT));

		FUNC6(commands, SCTP_CMD_REPLY, FUNC0(repl));
	} else {
		FUNC1("Giving up on INIT, attempts: %d"
				  " max_init_attempts: %d\n",
				  attempts, asoc->max_init_attempts);
		FUNC6(commands, SCTP_CMD_SET_SK_ERR,
				FUNC2(ETIMEDOUT));
		FUNC6(commands, SCTP_CMD_INIT_FAILED,
				FUNC4(SCTP_ERROR_NO_ERROR));
		return SCTP_DISPOSITION_DELETE_TCB;
	}

	return SCTP_DISPOSITION_CONSUME;
}