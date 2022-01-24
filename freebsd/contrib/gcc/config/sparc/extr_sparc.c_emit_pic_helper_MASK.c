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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BITS_PER_UNIT ; 
 int FUNCTION_BOUNDARY ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asm_out_file ; 
 scalar_t__ flag_delayed_branch ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int pic_helper_emitted_p ; 
 int /*<<< orphan*/  pic_helper_symbol_name ; 
 int /*<<< orphan*/  pic_offset_table_rtx ; 
 char** reg_names ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  text_section ; 

__attribute__((used)) static void
FUNC6 (void)
{
  const char *pic_name = reg_names[FUNC2 (pic_offset_table_rtx)];
  int align;

  FUNC5 (text_section);

  align = FUNC3 (FUNCTION_BOUNDARY / BITS_PER_UNIT);
  if (align > 0)
    FUNC0 (asm_out_file, align);
  FUNC1 (asm_out_file, pic_helper_symbol_name);
  if (flag_delayed_branch)
    FUNC4 (asm_out_file, "\tjmp\t%%o7+8\n\t add\t%%o7, %s, %s\n",
	    pic_name, pic_name);
  else
    FUNC4 (asm_out_file, "\tadd\t%%o7, %s, %s\n\tjmp\t%%o7+8\n\t nop\n",
	    pic_name, pic_name);

  pic_helper_emitted_p = true;
}