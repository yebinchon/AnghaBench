#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  enum mode_class { ____Placeholder_mode_class } mode_class ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int (* scalar_mode_supported_p ) (int) ;scalar_t__ (* vector_mode_supported_p ) (int) ;} ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int MODE_VECTOR_FLOAT ; 
 int MODE_VECTOR_INT ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 TYPE_1__ targetm ; 

int
FUNC4 (enum machine_mode mode)
{
  enum mode_class class = FUNC0 (mode);
  enum machine_mode innermode;

  /* Doh!  What's going on?  */
  if (class != MODE_VECTOR_INT
      && class != MODE_VECTOR_FLOAT)
    return 0;

  /* Hardware support.  Woo hoo!  */
  if (targetm.vector_mode_supported_p (mode))
    return 1;

  innermode = FUNC1 (mode);

  /* We should probably return 1 if requesting V4DI and we have no DI,
     but we have V2DI, but this is probably very unlikely.  */

  /* If we have support for the inner mode, we can safely emulate it.
     We may not have V2DI, but me can emulate with a pair of DIs.  */
  return targetm.scalar_mode_supported_p (innermode);
}