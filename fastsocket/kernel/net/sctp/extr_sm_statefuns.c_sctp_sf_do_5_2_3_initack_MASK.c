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
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
struct TYPE_2__ {struct sctp_endpoint const* ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

sctp_disposition_t FUNC4(const struct sctp_endpoint *ep,
					    const struct sctp_association *asoc,
					    const sctp_subtype_t type,
					    void *arg, sctp_cmd_seq_t *commands)
{
	/* Per the above section, we'll discard the chunk if we have an
	 * endpoint.  If this is an OOTB INIT-ACK, treat it as such.
	 */
	if (ep == FUNC3((FUNC0()))->ep)
		return FUNC2(ep, asoc, type, arg, commands);
	else
		return FUNC1(ep, asoc, type, arg, commands);
}