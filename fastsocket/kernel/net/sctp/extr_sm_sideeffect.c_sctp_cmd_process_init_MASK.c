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
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_init_chunk_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_association*,struct sctp_chunk*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*) ; 

__attribute__((used)) static int FUNC2(sctp_cmd_seq_t *commands,
				 struct sctp_association *asoc,
				 struct sctp_chunk *chunk,
				 sctp_init_chunk_t *peer_init,
				 gfp_t gfp)
{
	int error;

	/* We only process the init as a sideeffect in a single
	 * case.   This is when we process the INIT-ACK.   If we
	 * fail during INIT processing (due to malloc problems),
	 * just return the error and stop processing the stack.
	 */
	if (!FUNC0(asoc, chunk, FUNC1(chunk), peer_init, gfp))
		error = -ENOMEM;
	else
		error = 0;

	return error;
}