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
typedef  int /*<<< orphan*/  tree ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int BLKmode ; 
 int FUNC0 (int) ; 
 int UNITS_PER_WORD ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2 (tree type, enum machine_mode mode)
{
  int words;

  if (mode == BLKmode)
    words = FUNC1 (type);
  else
    words = FUNC0 (mode);

  return (words + UNITS_PER_WORD - 1) / UNITS_PER_WORD;  /* round up */
}