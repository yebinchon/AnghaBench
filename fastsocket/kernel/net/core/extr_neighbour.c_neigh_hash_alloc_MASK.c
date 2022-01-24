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
struct neighbour {int dummy; } ;

/* Variables and functions */
 int GFP_ATOMIC ; 
 unsigned long PAGE_SIZE ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 struct neighbour** FUNC2 (unsigned long,int) ; 

__attribute__((used)) static struct neighbour **FUNC3(unsigned int entries)
{
	unsigned long size = entries * sizeof(struct neighbour *);
	struct neighbour **ret;

	if (size <= PAGE_SIZE) {
		ret = FUNC2(size, GFP_ATOMIC);
	} else {
		ret = (struct neighbour **)
		      FUNC0(GFP_ATOMIC|__GFP_ZERO, FUNC1(size));
	}
	return ret;
}