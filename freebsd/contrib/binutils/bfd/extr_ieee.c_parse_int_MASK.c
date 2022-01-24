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
typedef  int /*<<< orphan*/  common_header_type ;
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (common_header_type *ieee, bfd_vma *value_ptr)
{
  int value = FUNC1 (ieee);
  int result;

  if (value >= 0 && value <= 127)
    {
      *value_ptr = value;
      FUNC0 (ieee);
      return TRUE;
    }
  else if (value >= 0x80 && value <= 0x88)
    {
      unsigned int count = value & 0xf;

      result = 0;
      FUNC0 (ieee);
      while (count)
	{
	  result = (result << 8) | FUNC2 (ieee);
	  count--;
	}
      *value_ptr = result;
      return TRUE;
    }
  return FALSE;
}