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
typedef  scalar_t__ tree ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int BLKmode ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int
FUNC3 (enum machine_mode mode, tree type)
{
  if (type)
    return FUNC2 (type);

  /* No type info available for some library calls ...  */
  if (mode != BLKmode)
    return FUNC0 (mode);

  /* If we have neither type nor mode, abort */
  FUNC1 ();
}