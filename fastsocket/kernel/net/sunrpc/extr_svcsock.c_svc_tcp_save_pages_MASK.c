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
struct svc_sock {int sk_tcplen; int /*<<< orphan*/ ** sk_pages; } ;
struct svc_rqst {int /*<<< orphan*/ ** rq_pages; } ;
typedef  int /*<<< orphan*/  rpc_fraghdr ;

/* Variables and functions */
 unsigned int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 

__attribute__((used)) static void FUNC0(struct svc_sock *svsk, struct svc_rqst *rqstp)
{
	unsigned int i, len, npages;

	if (svsk->sk_tcplen <= sizeof(rpc_fraghdr))
		return;
	len = svsk->sk_tcplen - sizeof(rpc_fraghdr);
	npages = (len + PAGE_SIZE - 1) >> PAGE_SHIFT;
	for (i = 0; i < npages; i++) {
		svsk->sk_pages[i] = rqstp->rq_pages[i];
		rqstp->rq_pages[i] = NULL;
	}
}