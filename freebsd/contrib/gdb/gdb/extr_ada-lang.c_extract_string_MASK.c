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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int) ; 

void
FUNC1 (CORE_ADDR addr, char *buf)
{
  int char_index = 0;

  /* Loop, reading one byte at a time, until we reach the '\000' 
     end-of-string marker */
  do
    {
      FUNC0 (addr + char_index * sizeof (char),
			  buf + char_index * sizeof (char), sizeof (char));
      char_index++;
    }
  while (buf[char_index - 1] != '\000');
}