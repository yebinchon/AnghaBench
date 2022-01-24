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

/* Variables and functions */
 int FUNC0 (char**) ; 
 char** cea_speaker_allocation_names ; 
 scalar_t__ FUNC1 (char*,int,char*,char*) ; 

void FUNC2(int spk_alloc, char *buf, int buflen)
{
	int i, j;

	for (i = 0, j = 0; i < FUNC0(cea_speaker_allocation_names); i++) {
		if (spk_alloc & (1 << i))
			j += FUNC1(buf + j, buflen - j,  " %s",
					cea_speaker_allocation_names[i]);
	}
	buf[j] = '\0';	/* necessary when j == 0 */
}