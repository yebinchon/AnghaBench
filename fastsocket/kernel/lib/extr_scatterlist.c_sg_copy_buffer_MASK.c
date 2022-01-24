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
struct sg_mapping_iter {void* addr; int /*<<< orphan*/  length; } ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 unsigned int SG_MITER_ATOMIC ; 
 unsigned int SG_MITER_FROM_SG ; 
 unsigned int SG_MITER_TO_SG ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC4 (struct sg_mapping_iter*) ; 
 int /*<<< orphan*/  FUNC5 (struct sg_mapping_iter*,struct scatterlist*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sg_mapping_iter*) ; 

__attribute__((used)) static size_t FUNC7(struct scatterlist *sgl, unsigned int nents,
			     void *buf, size_t buflen, int to_buffer)
{
	unsigned int offset = 0;
	struct sg_mapping_iter miter;
	unsigned long flags;
	unsigned int sg_flags = SG_MITER_ATOMIC;

	if (to_buffer)
		sg_flags |= SG_MITER_FROM_SG;
	else
		sg_flags |= SG_MITER_TO_SG;

	FUNC5(&miter, sgl, nents, sg_flags);

	FUNC1(flags);

	while (FUNC4(&miter) && offset < buflen) {
		unsigned int len;

		len = FUNC3(miter.length, buflen - offset);

		if (to_buffer)
			FUNC2(buf + offset, miter.addr, len);
		else
			FUNC2(miter.addr, buf + offset, len);

		offset += len;
	}

	FUNC6(&miter);

	FUNC0(flags);
	return offset;
}