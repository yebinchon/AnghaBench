#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  chunk; } ;
typedef  TYPE_1__ sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
typedef  int /*<<< orphan*/  sctp_chunkhdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_DISCARD ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_endpoint const*,struct sctp_association const*,TYPE_1__ const,void*,int /*<<< orphan*/ *) ; 

sctp_disposition_t FUNC3(const struct sctp_endpoint *ep,
					 const struct sctp_association *asoc,
					 const sctp_subtype_t type,
					 void *arg,
					 sctp_cmd_seq_t *commands)
{
	struct sctp_chunk *chunk = arg;

	/* Make sure that the chunk has a valid length.
	 * Since we don't know the chunk type, we use a general
	 * chunkhdr structure to make a comparison.
	 */
	if (!FUNC1(chunk, sizeof(sctp_chunkhdr_t)))
		return FUNC2(ep, asoc, type, arg,
						  commands);

	FUNC0("Chunk %d is discarded\n", type.chunk);
	return SCTP_DISPOSITION_DISCARD;
}