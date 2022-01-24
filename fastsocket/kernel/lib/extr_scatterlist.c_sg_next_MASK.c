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
struct scatterlist {scalar_t__ sg_magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SG_MAGIC ; 
 struct scatterlist* FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 
 scalar_t__ FUNC3 (struct scatterlist*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

struct scatterlist *FUNC5(struct scatterlist *sg)
{
#ifdef CONFIG_DEBUG_SG
	BUG_ON(sg->sg_magic != SG_MAGIC);
#endif
	if (FUNC3(sg))
		return NULL;

	sg++;
	if (FUNC4(FUNC2(sg)))
		sg = FUNC1(sg);

	return sg;
}