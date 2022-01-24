#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ length; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISA_EXT_COP2_16 ; 
 int /*<<< orphan*/  ISA_EXT_COP2_32 ; 
 int /*<<< orphan*/  ISA_EXT_COP2_48 ; 
 int /*<<< orphan*/  ISA_EXT_COP2_64 ; 
 int /*<<< orphan*/  ISA_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__ mep_all_cop_isas_mask ; 

void
FUNC2 (void)
{
  if (mep_all_cop_isas_mask.length != 0)
    return;
  FUNC1 (& mep_all_cop_isas_mask, ISA_MAX);
  /* begin-all-cop-isas */
  FUNC0 (& mep_all_cop_isas_mask, ISA_EXT_COP2_16);
  FUNC0 (& mep_all_cop_isas_mask, ISA_EXT_COP2_32);
  FUNC0 (& mep_all_cop_isas_mask, ISA_EXT_COP2_48);
  FUNC0 (& mep_all_cop_isas_mask, ISA_EXT_COP2_64);
  /* end-all-cop-isas */
}