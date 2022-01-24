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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int actual; int length; int /*<<< orphan*/ * buf; } ;
struct lh7a40x_request {TYPE_1__ req; } ;
struct lh7a40x_ep {scalar_t__ fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/  volatile*) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline__ int FUNC3(struct lh7a40x_ep *ep,
				   struct lh7a40x_request *req, int max)
{
	u8 *buf;
	int length, count;
	volatile u32 *fifo = (volatile u32 *)ep->fifo;

	buf = req->req.buf + req->req.actual;
	FUNC2(buf);

	length = req->req.length - req->req.actual;
	length = FUNC1(length, max);
	req->req.actual += length;

	FUNC0("Write %d (max %d), fifo %p\n", length, max, fifo);

	count = length;
	while (count--) {
		*fifo = *buf++;
	}

	return length;
}