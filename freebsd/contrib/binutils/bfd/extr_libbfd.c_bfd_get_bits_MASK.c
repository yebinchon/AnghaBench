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
typedef  int bfd_uint64_t ;
typedef  int bfd_byte ;
typedef  scalar_t__ bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

bfd_uint64_t
FUNC1 (const void *p, int bits, bfd_boolean big_p)
{
  const bfd_byte *addr = p;
  bfd_uint64_t data;
  int i;
  int bytes;

  if (bits % 8 != 0)
    FUNC0 ();

  data = 0;
  bytes = bits / 8;
  for (i = 0; i < bytes; i++)
    {
      int index = big_p ? i : bytes - i - 1;

      data = (data << 8) | addr[index];
    }

  return data;
}