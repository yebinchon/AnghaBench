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
struct nfs_direct_req {scalar_t__ count; scalar_t__ error; int /*<<< orphan*/  completion; scalar_t__ iocb; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EIOCBQUEUED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC1(struct nfs_direct_req *dreq)
{
	ssize_t result = -EIOCBQUEUED;

	/* Async requests don't wait here */
	if (dreq->iocb)
		goto out;

	result = FUNC0(&dreq->completion);

	if (!result)
		result = dreq->error;
	if (!result)
		result = dreq->count;

out:
	return (ssize_t) result;
}