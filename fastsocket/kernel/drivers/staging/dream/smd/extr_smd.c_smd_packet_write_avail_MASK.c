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
struct smd_channel {int dummy; } ;

/* Variables and functions */
 int SMD_HEADER_SIZE ; 
 int FUNC0 (struct smd_channel*) ; 

__attribute__((used)) static int FUNC1(struct smd_channel *ch)
{
	int n = FUNC0(ch);
	return n > SMD_HEADER_SIZE ? n - SMD_HEADER_SIZE : 0;
}