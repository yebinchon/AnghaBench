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
typedef  int /*<<< orphan*/  bfd_signed_vma ;
typedef  int bfd_byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const) ; 

bfd_signed_vma
FUNC1 (const void *p)
{
  const bfd_byte *addr = p;
  return FUNC0 ((addr[1] << 8) | addr[0]);
}