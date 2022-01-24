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
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
typedef  int /*<<< orphan*/  sctp_chunkhdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_OUTOFBLUES ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_endpoint const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 

sctp_disposition_t FUNC4(const struct sctp_endpoint *ep,
				      const struct sctp_association *asoc,
				      const sctp_subtype_t type,
				      void *arg,
				      sctp_cmd_seq_t *commands)
{
	struct sctp_chunk *chunk = arg;

	/* Make sure that the SHUTDOWN_ACK chunk has a valid length. */
	if (!FUNC1(chunk, sizeof(sctp_chunkhdr_t)))
		return FUNC3(ep, asoc, type, arg,
						  commands);

	/* Although we do have an association in this case, it corresponds
	 * to a restarted association. So the packet is treated as an OOTB
	 * packet and the state function that handles OOTB SHUTDOWN_ACK is
	 * called with a NULL association.
	 */
	FUNC0(SCTP_MIB_OUTOFBLUES);

	return FUNC2(ep, NULL, type, arg, commands);
}