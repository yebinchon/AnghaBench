#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sctp_hashbucket {int /*<<< orphan*/  lock; int /*<<< orphan*/  chain; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;
struct sctp_ep_common {size_t hashent; int /*<<< orphan*/  node; TYPE_1__ bind_addr; } ;
struct sctp_endpoint {struct sctp_ep_common base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 struct sctp_hashbucket* sctp_ep_hashtable ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct sctp_endpoint *ep)
{
	struct sctp_ep_common *epb;
	struct sctp_hashbucket *head;

	epb = &ep->base;

	epb->hashent = FUNC1(epb->bind_addr.port);
	head = &sctp_ep_hashtable[epb->hashent];

	FUNC2(&head->lock);
	FUNC0(&epb->node, &head->chain);
	FUNC3(&head->lock);
}