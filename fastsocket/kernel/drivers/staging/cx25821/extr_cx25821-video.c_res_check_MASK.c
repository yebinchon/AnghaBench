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
struct cx25821_fh {unsigned int resources; } ;

/* Variables and functions */

int FUNC0(struct cx25821_fh *fh, unsigned int bit)
{
	return fh->resources & bit;
}