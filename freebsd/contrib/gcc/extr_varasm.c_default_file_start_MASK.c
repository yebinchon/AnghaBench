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
struct TYPE_2__ {scalar_t__ file_start_file_directive; scalar_t__ file_start_app_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASM_APP_OFF ; 
 int /*<<< orphan*/  asm_out_file ; 
 int /*<<< orphan*/  flag_verbose_asm ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_input_filename ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ targetm ; 

void
FUNC2 (void)
{
  if (targetm.file_start_app_off && !flag_verbose_asm)
    FUNC0 (ASM_APP_OFF, asm_out_file);

  if (targetm.file_start_file_directive)
    FUNC1 (asm_out_file, main_input_filename);
}