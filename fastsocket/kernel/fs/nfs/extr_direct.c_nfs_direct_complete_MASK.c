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
struct nfs_direct_req {int /*<<< orphan*/  completion; scalar_t__ iocb; scalar_t__ count; scalar_t__ error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_direct_req*) ; 

__attribute__((used)) static void FUNC3(struct nfs_direct_req *dreq)
{
	if (dreq->iocb) {
		long res = (long) dreq->error;
		if (!res)
			res = (long) dreq->count;
		FUNC0(dreq->iocb, res, 0);
	}
	FUNC1(&dreq->completion);

	FUNC2(dreq);
}