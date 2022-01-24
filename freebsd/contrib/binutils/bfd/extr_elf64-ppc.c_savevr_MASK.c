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
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 scalar_t__ LI_R12_0 ; 
 scalar_t__ STVX_VR0_R12_R0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_byte *
FUNC1 (bfd *abfd, bfd_byte *p, int r)
{
  FUNC0 (abfd, LI_R12_0 + (1 << 16) - (32 - r) * 16, p);
  p = p + 4;
  FUNC0 (abfd, STVX_VR0_R12_R0 + (r << 21), p);
  return p + 4;
}