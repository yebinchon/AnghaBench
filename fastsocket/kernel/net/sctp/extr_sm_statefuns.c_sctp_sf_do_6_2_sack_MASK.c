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
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_CMD_GEN_SACK ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_DELAY_SACK_EXPIREDS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

sctp_disposition_t FUNC3(const struct sctp_endpoint *ep,
				       const struct sctp_association *asoc,
				       const sctp_subtype_t type,
				       void *arg,
				       sctp_cmd_seq_t *commands)
{
	FUNC1(SCTP_MIB_DELAY_SACK_EXPIREDS);
	FUNC2(commands, SCTP_CMD_GEN_SACK, FUNC0());
	return SCTP_DISPOSITION_CONSUME;
}