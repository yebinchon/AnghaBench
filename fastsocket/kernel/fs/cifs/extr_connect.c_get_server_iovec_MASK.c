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
struct kvec {int dummy; } ;
struct TCP_Server_Info {unsigned int nr_iov; struct kvec* iov; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct kvec*) ; 
 struct kvec* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct kvec *
FUNC2(struct TCP_Server_Info *server, unsigned int nr_segs)
{
	struct kvec *new_iov;

	if (server->iov && nr_segs <= server->nr_iov)
		return server->iov;

	/* not big enough -- allocate a new one and release the old */
	new_iov = FUNC1(sizeof(*new_iov) * nr_segs, GFP_NOFS);
	if (new_iov) {
		FUNC0(server->iov);
		server->iov = new_iov;
		server->nr_iov = nr_segs;
	}
	return new_iov;
}