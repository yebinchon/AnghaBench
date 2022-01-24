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
struct ncp_server {int dummy; } ;
struct ncp_request_reply {int status; int /*<<< orphan*/  req; } ;

/* Variables and functions */
#define  RQ_ABANDONED 132 
#define  RQ_DONE 131 
#define  RQ_IDLE 130 
#define  RQ_INPROGRESS 129 
#define  RQ_QUEUED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ncp_server*,struct ncp_request_reply*,int) ; 

__attribute__((used)) static inline void FUNC2(struct ncp_server *server, struct ncp_request_reply *req, int err)
{
	/* If req is done, we got signal, but we also received answer... */
	switch (req->status) {
		case RQ_IDLE:
		case RQ_DONE:
			break;
		case RQ_QUEUED:
			FUNC0(&req->req);
			FUNC1(server, req, err);
			break;
		case RQ_INPROGRESS:
			req->status = RQ_ABANDONED;
			break;
		case RQ_ABANDONED:
			break;
	}
}