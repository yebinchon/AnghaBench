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
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*,struct scatterlist*) ; 

__attribute__((used)) static inline void FUNC3(struct ib_device *dev,
		struct scatterlist *sg, unsigned int sg_dma_len, int direction)
{
	unsigned int i;

	for (i = 0; i < sg_dma_len; ++i) {
		FUNC0(dev,
				FUNC1(dev, &sg[i]),
				FUNC2(dev, &sg[i]),
				direction);
	}
}