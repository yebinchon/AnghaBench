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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  BYTES_BIG_ENDIAN ; 
 scalar_t__ FUNC0 (int) ; 
 int UNITS_PER_WORD ; 
 int /*<<< orphan*/  WORDS_BIG_ENDIAN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

unsigned int
FUNC2 (enum machine_mode outermode, enum machine_mode innermode)
{
  unsigned int offset = 0;
  int difference = (FUNC0 (innermode) - FUNC0 (outermode));

  FUNC1 (FUNC0 (innermode) >= FUNC0 (outermode));

  if (difference > 0)
    {
      if (! WORDS_BIG_ENDIAN)
	offset += (difference / UNITS_PER_WORD) * UNITS_PER_WORD;
      if (! BYTES_BIG_ENDIAN)
	offset += difference % UNITS_PER_WORD;
    }

  return offset;
}