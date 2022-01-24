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
struct gdbarch {int dummy; } ;
typedef  enum arm_float_model { ____Placeholder_arm_float_model } arm_float_model ;

/* Variables and functions */
 int ARM_FLOAT_FPA ; 
 int ARM_FLOAT_SOFT_FPA ; 
 scalar_t__ BFD_ENDIAN_LITTLE ; 
 int FUNC0 (struct gdbarch*) ; 
 int /*<<< orphan*/  floatformat_ieee_double_little ; 
 int /*<<< orphan*/  floatformat_ieee_double_littlebyte_bigword ; 
 scalar_t__ FUNC1 (struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4 (struct gdbarch *gdbarch)
{
  enum arm_float_model fp_model = FUNC0 (gdbarch);

  if (FUNC1 (gdbarch) == BFD_ENDIAN_LITTLE 
      && (fp_model == ARM_FLOAT_SOFT_FPA || fp_model == ARM_FLOAT_FPA))
    {
      FUNC2	(gdbarch,
				 &floatformat_ieee_double_littlebyte_bigword);
      FUNC3
	(gdbarch, &floatformat_ieee_double_littlebyte_bigword);
    }
  else
    {
      FUNC2 (gdbarch, &floatformat_ieee_double_little);
      FUNC3 (gdbarch,
				      &floatformat_ieee_double_little);
    }
}