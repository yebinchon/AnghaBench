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
typedef  int /*<<< orphan*/  vec ;
struct socket {int dummy; } ;
struct ncp_request_reply {int tx_iovlen; int /*<<< orphan*/  tx_totallen; int /*<<< orphan*/  tx_ciov; } ;
struct kvec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int FUNC0 (struct socket*,struct kvec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct socket *sock, struct ncp_request_reply *req)
{
	struct kvec vec[3];
	/* sock_sendmsg updates iov pointers for us :-( */
	FUNC1(vec, req->tx_ciov, req->tx_iovlen * sizeof(vec[0]));
	return FUNC0(sock, vec, req->tx_iovlen,
		       req->tx_totallen, MSG_DONTWAIT);
}