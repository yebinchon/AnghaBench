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
struct mid_q_entry {int multiRsp; char* resp_buf; int multiEnd; int large_buf; } ;
struct TCP_Server_Info {int large_buf; int /*<<< orphan*/ * smallbuf; int /*<<< orphan*/ * bigbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (char*,char*) ; 
 void FUNC3 (struct mid_q_entry*,int) ; 

__attribute__((used)) static void
FUNC4(struct mid_q_entry *mid, struct TCP_Server_Info *server,
	   char *buf, int malformed)
{
	if (malformed == 0 && FUNC1(buf) > 0) {
		mid->multiRsp = true;
		if (mid->resp_buf) {
			/* merge response - fix up 1st*/
			malformed = FUNC2(buf, mid->resp_buf);
			if (malformed > 0)
				return;

			/* All parts received or packet is malformed. */
			mid->multiEnd = true;
			return FUNC3(mid, malformed);
		}
		if (!server->large_buf) {
			/*FIXME: switch to already allocated largebuf?*/
			FUNC0(1, "1st trans2 resp needs bigbuf");
		} else {
			/* Have first buffer */
			mid->resp_buf = buf;
			mid->large_buf = true;
			server->bigbuf = NULL;
		}
		return;
	}
	mid->resp_buf = buf;
	mid->large_buf = server->large_buf;
	/* Was previous buf put in mpx struct for multi-rsp? */
	if (!mid->multiRsp) {
		/* smb buffer will be freed by user thread */
		if (server->large_buf)
			server->bigbuf = NULL;
		else
			server->smallbuf = NULL;
	}
	FUNC3(mid, malformed);
}