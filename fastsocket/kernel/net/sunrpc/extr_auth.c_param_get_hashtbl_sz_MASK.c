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
struct kernel_param {scalar_t__ arg; } ;

/* Variables and functions */
 int FUNC0 (char*,char*,unsigned int) ; 

__attribute__((used)) static int FUNC1(char *buffer, struct kernel_param *kp)
{
	unsigned int nbits;

	nbits = *(unsigned int *)kp->arg;
	return FUNC0(buffer, "%u", 1U << nbits);
}