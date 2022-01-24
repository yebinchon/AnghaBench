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
struct scatterlist {int dummy; } ;
struct msghdr {int dummy; } ;
struct cmsghdr {scalar_t__ cmsg_level; int cmsg_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmsghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr*) ; 
 struct cmsghdr* FUNC2 (struct msghdr*,struct cmsghdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct msghdr*,struct cmsghdr*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
#define  RDS_CMSG_ATOMIC_CSWP 134 
#define  RDS_CMSG_ATOMIC_FADD 133 
#define  RDS_CMSG_MASKED_ATOMIC_CSWP 132 
#define  RDS_CMSG_MASKED_ATOMIC_FADD 131 
#define  RDS_CMSG_RDMA_ARGS 130 
#define  RDS_CMSG_RDMA_DEST 129 
#define  RDS_CMSG_RDMA_MAP 128 
 scalar_t__ SOL_RDS ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct msghdr *msg, int data_len)
{
	struct cmsghdr *cmsg;
	int size = 0;
	int cmsg_groups = 0;
	int retval;

	for (cmsg = FUNC1(msg); cmsg; cmsg = FUNC2(msg, cmsg)) {
		if (!FUNC3(msg, cmsg))
			return -EINVAL;

		if (cmsg->cmsg_level != SOL_RDS)
			continue;

		switch (cmsg->cmsg_type) {
		case RDS_CMSG_RDMA_ARGS:
			cmsg_groups |= 1;
			retval = FUNC5(FUNC0(cmsg));
			if (retval < 0)
				return retval;
			size += retval;

			break;

		case RDS_CMSG_RDMA_DEST:
		case RDS_CMSG_RDMA_MAP:
			cmsg_groups |= 2;
			/* these are valid but do no add any size */
			break;

		case RDS_CMSG_ATOMIC_CSWP:
		case RDS_CMSG_ATOMIC_FADD:
		case RDS_CMSG_MASKED_ATOMIC_CSWP:
		case RDS_CMSG_MASKED_ATOMIC_FADD:
			cmsg_groups |= 1;
			size += sizeof(struct scatterlist);
			break;

		default:
			return -EINVAL;
		}

	}

	size += FUNC4(data_len, PAGE_SIZE) * sizeof(struct scatterlist);

	/* Ensure (DEST, MAP) are never used with (ARGS, ATOMIC) */
	if (cmsg_groups == 3)
		return -EINVAL;

	return size;
}