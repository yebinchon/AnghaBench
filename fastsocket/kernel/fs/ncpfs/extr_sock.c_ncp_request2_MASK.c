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
struct ncp_server {scalar_t__ has_subfunction; int current_size; int completion; int reply_size; int ncp_reply_size; int /*<<< orphan*/  conn_status; scalar_t__ packet; } ;
struct ncp_request_header {int task; int function; int /*<<< orphan*/  type; int /*<<< orphan*/ * data; } ;
struct ncp_reply_header {int completion_code; int /*<<< orphan*/  connection_state; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  NCP_REQUEST ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ncp_server*,int,struct ncp_reply_header*,int) ; 

int FUNC4(struct ncp_server *server, int function, 
		void* rpl, int size)
{
	struct ncp_request_header *h;
	struct ncp_reply_header* reply = rpl;
	int result;

	h = (struct ncp_request_header *) (server->packet);
	if (server->has_subfunction != 0) {
		*(__u16 *) & (h->data[0]) = FUNC2(server->current_size - sizeof(*h) - 2);
	}
	h->type = NCP_REQUEST;
	/*
	 * The server shouldn't know or care what task is making a
	 * request, so we always use the same task number.
	 */
	h->task = 2; /* (current->pid) & 0xff; */
	h->function = function;

	result = FUNC3(server, server->current_size, reply, size);
	if (result < 0) {
		FUNC0("ncp_request_error: %d\n", result);
		goto out;
	}
	server->completion = reply->completion_code;
	server->conn_status = reply->connection_state;
	server->reply_size = result;
	server->ncp_reply_size = result - sizeof(struct ncp_reply_header);

	result = reply->completion_code;

	if (result != 0)
		FUNC1("ncp_request: completion code=%x\n", result);
out:
	return result;
}