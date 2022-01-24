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
struct nfqnl_instance {unsigned char copy_mode; int copy_range; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
#define  NFQNL_COPY_META 130 
#define  NFQNL_COPY_NONE 129 
#define  NFQNL_COPY_PACKET 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct nfqnl_instance *queue,
	       unsigned char mode, unsigned int range)
{
	int status = 0;

	FUNC0(&queue->lock);
	switch (mode) {
	case NFQNL_COPY_NONE:
	case NFQNL_COPY_META:
		queue->copy_mode = mode;
		queue->copy_range = 0;
		break;

	case NFQNL_COPY_PACKET:
		queue->copy_mode = mode;
		/* we're using struct nlattr which has 16bit nla_len */
		if (range > 0xffff)
			queue->copy_range = 0xffff;
		else
			queue->copy_range = range;
		break;

	default:
		status = -EINVAL;

	}
	FUNC1(&queue->lock);

	return status;
}