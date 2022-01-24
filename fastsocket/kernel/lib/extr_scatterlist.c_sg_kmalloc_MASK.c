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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 unsigned int SG_MAX_SINGLE_ALLOC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct scatterlist *FUNC2(unsigned int nents, gfp_t gfp_mask)
{
	if (nents == SG_MAX_SINGLE_ALLOC)
		return (struct scatterlist *) FUNC0(gfp_mask);
	else
		return FUNC1(nents * sizeof(struct scatterlist), gfp_mask);
}