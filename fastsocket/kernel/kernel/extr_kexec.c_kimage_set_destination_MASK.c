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
struct kimage {unsigned long destination; } ;

/* Variables and functions */
 unsigned long IND_DESTINATION ; 
 unsigned long PAGE_MASK ; 
 int FUNC0 (struct kimage*,unsigned long) ; 

__attribute__((used)) static int FUNC1(struct kimage *image,
				   unsigned long destination)
{
	int result;

	destination &= PAGE_MASK;
	result = FUNC0(image, destination | IND_DESTINATION);
	if (result == 0)
		image->destination = destination;

	return result;
}