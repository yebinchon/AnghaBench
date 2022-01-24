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
typedef  int /*<<< orphan*/  varray_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void
FUNC1 (varray_type *data_area, int value)
{
  unsigned char byte;
  int more;

  do
    {
      byte = value & 0x7f;
      value >>= 7;
      more = ! ((value == 0 && (byte & 0x40) == 0)
		|| (value == -1 && (byte & 0x40) != 0));
      if (more)
	byte |= 0x80;
      FUNC0 (*data_area, byte);
    }
  while (more);
}