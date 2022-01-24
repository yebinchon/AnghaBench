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
struct sk_buff_head {int dummy; } ;
struct sctp_ulpq {int dummy; } ;
struct sctp_ulpevent {int msg_flags; } ;
struct sctp_chunk {int /*<<< orphan*/  asoc; scalar_t__ chunk_hdr; } ;
typedef  int /*<<< orphan*/  sctp_data_chunk_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int MSG_EOR ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_ulpevent*) ; 
 struct sctp_ulpevent* FUNC2 (int /*<<< orphan*/ ,struct sctp_chunk*,int /*<<< orphan*/ ) ; 
 struct sctp_ulpevent* FUNC3 (struct sctp_ulpq*,struct sctp_ulpevent*) ; 
 struct sctp_ulpevent* FUNC4 (struct sctp_ulpq*,struct sctp_ulpevent*) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_ulpq*,struct sctp_ulpevent*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff_head*) ; 

int FUNC7(struct sctp_ulpq *ulpq, struct sctp_chunk *chunk,
			gfp_t gfp)
{
	struct sk_buff_head temp;
	sctp_data_chunk_t *hdr;
	struct sctp_ulpevent *event;

	hdr = (sctp_data_chunk_t *) chunk->chunk_hdr;

	/* Create an event from the incoming chunk. */
	event = FUNC2(chunk->asoc, chunk, gfp);
	if (!event)
		return -ENOMEM;

	/* Do reassembly if needed.  */
	event = FUNC4(ulpq, event);

	/* Do ordering if needed.  */
	if ((event) && (event->msg_flags & MSG_EOR)){
		/* Create a temporary list to collect chunks on.  */
		FUNC6(&temp);
		FUNC0(&temp, FUNC1(event));

		event = FUNC3(ulpq, event);
	}

	/* Send event to the ULP.  'event' is the sctp_ulpevent for
	 * very first SKB on the 'temp' list.
	 */
	if (event)
		FUNC5(ulpq, event);

	return 0;
}