#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct call_site_record {int /*<<< orphan*/  action; scalar_t__ landing_pad; } ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {int call_site_data_used; struct call_site_record* call_site_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ call_site_base ; 
 TYPE_2__* cfun ; 
 char* current_function_func_begin_label ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,...) ; 

__attribute__((used)) static void
FUNC6 (void)
{
  int n = cfun->eh->call_site_data_used;
  int i;

  for (i = 0; i < n; ++i)
    {
      struct call_site_record *cs = &cfun->eh->call_site_data[i];
      char reg_start_lab[32];
      char reg_end_lab[32];
      char landing_pad_lab[32];

      FUNC0 (reg_start_lab, "LEHB", call_site_base + i);
      FUNC0 (reg_end_lab, "LEHE", call_site_base + i);

      if (cs->landing_pad)
	FUNC0 (landing_pad_lab, "L",
				     FUNC1 (cs->landing_pad));

      /* ??? Perhaps use insn length scaling if the assembler supports
	 generic arithmetic.  */
      /* ??? Perhaps use attr_length to choose data1 or data2 instead of
	 data4 if the function is small enough.  */
#ifdef HAVE_AS_LEB128
      dw2_asm_output_delta_uleb128 (reg_start_lab,
				    current_function_func_begin_label,
				    "region %d start", i);
      dw2_asm_output_delta_uleb128 (reg_end_lab, reg_start_lab,
				    "length");
      if (cs->landing_pad)
	dw2_asm_output_delta_uleb128 (landing_pad_lab,
				      current_function_func_begin_label,
				      "landing pad");
      else
	dw2_asm_output_data_uleb128 (0, "landing pad");
#else
      FUNC4 (4, reg_start_lab,
			    current_function_func_begin_label,
			    "region %d start", i);
      FUNC4 (4, reg_end_lab, reg_start_lab, "length");
      if (cs->landing_pad)
	FUNC4 (4, landing_pad_lab,
			      current_function_func_begin_label,
			      "landing pad");
      else
	FUNC2 (4, 0, "landing pad");
#endif
      FUNC3 (cs->action, "action");
    }

  call_site_base += n;
}