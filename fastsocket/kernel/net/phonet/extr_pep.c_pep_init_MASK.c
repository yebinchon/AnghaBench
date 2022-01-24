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
struct sock {int dummy; } ;
struct pep_sock {int /*<<< orphan*/  pipe_handle; int /*<<< orphan*/  ctrlreq_queue; int /*<<< orphan*/  hlist; int /*<<< orphan*/  ackq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PN_PIPE_INVALID_HANDLE ; 
 struct pep_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct sock *sk)
{
	struct pep_sock *pn = FUNC1(sk);

	FUNC0(&pn->ackq);
	FUNC0(&pn->hlist);
	FUNC2(&pn->ctrlreq_queue);
	pn->pipe_handle = PN_PIPE_INVALID_HANDLE;
	return 0;
}