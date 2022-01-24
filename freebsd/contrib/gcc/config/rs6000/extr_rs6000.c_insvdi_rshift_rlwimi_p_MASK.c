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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

int
FUNC1 (rtx sizeop, rtx startop, rtx shiftop)
{
  if (FUNC0 (startop) > 32
      && FUNC0 (startop) < 64
      && FUNC0 (sizeop) > 1
      && FUNC0 (sizeop) + FUNC0 (startop) < 64
      && FUNC0 (shiftop) > 0
      && FUNC0 (sizeop) + FUNC0 (shiftop) < 32
      && (64 - (FUNC0 (shiftop) & 63)) >= FUNC0 (sizeop))
    return 1;

  return 0;
}