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
union sctp_params {int /*<<< orphan*/  v; TYPE_1__* p; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef  int sctp_ierror_t ;
struct TYPE_2__ {int type; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_ERROR_UNKNOWN_PARAM ; 
 int SCTP_IERROR_ERROR ; 
 int SCTP_IERROR_NOMEM ; 
 int SCTP_IERROR_NO_ERROR ; 
#define  SCTP_PARAM_ACTION_DISCARD 131 
#define  SCTP_PARAM_ACTION_DISCARD_ERR 130 
 int SCTP_PARAM_ACTION_MASK ; 
#define  SCTP_PARAM_ACTION_SKIP 129 
#define  SCTP_PARAM_ACTION_SKIP_ERR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_chunk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_chunk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_chunk* FUNC4 (struct sctp_association const*,struct sctp_chunk*) ; 

__attribute__((used)) static sctp_ierror_t FUNC5(const struct sctp_association *asoc,
					    union sctp_params param,
					    struct sctp_chunk *chunk,
					    struct sctp_chunk **errp)
{
	int retval = SCTP_IERROR_NO_ERROR;

	switch (param.p->type & SCTP_PARAM_ACTION_MASK) {
	case SCTP_PARAM_ACTION_DISCARD:
		retval =  SCTP_IERROR_ERROR;
		break;
	case SCTP_PARAM_ACTION_SKIP:
		break;
	case SCTP_PARAM_ACTION_DISCARD_ERR:
		retval =  SCTP_IERROR_ERROR;
		/* Fall through */
	case SCTP_PARAM_ACTION_SKIP_ERR:
		/* Make an ERROR chunk, preparing enough room for
		 * returning multiple unknown parameters.
		 */
		if (NULL == *errp)
			*errp = FUNC4(asoc, chunk);

		if (*errp) {
			if (!FUNC3(*errp, SCTP_ERROR_UNKNOWN_PARAM,
					FUNC0(FUNC1(param.p->length))))
				FUNC2(*errp,
						FUNC0(FUNC1(param.p->length)),
						param.v);
		} else {
			/* If there is no memory for generating the ERROR
			 * report as specified, an ABORT will be triggered
			 * to the peer and the association won't be
			 * established.
			 */
			retval = SCTP_IERROR_NOMEM;
		}
		break;
	default:
		break;
	}

	return retval;
}