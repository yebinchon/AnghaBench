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
 scalar_t__ BLR ; 
 scalar_t__ LD_R0_0R1 ; 
 scalar_t__ MTLR_R0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bfd_byte *
FUNC2 (bfd *abfd, bfd_byte *p, int r)
{
  FUNC0 (abfd, LD_R0_0R1 + 16, p);
  p = p + 4;
  p = FUNC1 (abfd, p, r);
  FUNC0 (abfd, MTLR_R0, p);
  p = p + 4;
  if (r == 29)
    {
      p = FUNC1 (abfd, p, 30);
      p = FUNC1 (abfd, p, 31);
    }
  FUNC0 (abfd, BLR, p);
  return p + 4;
}