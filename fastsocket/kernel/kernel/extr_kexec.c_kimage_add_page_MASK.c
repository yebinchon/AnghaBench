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
struct kimage {int /*<<< orphan*/  destination; } ;

/* Variables and functions */
 unsigned long IND_SOURCE ; 
 unsigned long PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC0 (struct kimage*,unsigned long) ; 

__attribute__((used)) static int FUNC1(struct kimage *image, unsigned long page)
{
	int result;

	page &= PAGE_MASK;
	result = FUNC0(image, page | IND_SOURCE);
	if (result == 0)
		image->destination += PAGE_SIZE;

	return result;
}