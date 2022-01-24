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
 int /*<<< orphan*/  MACHO_DYNAMIC_NO_PIC_P ; 
 int current_function_uses_pic_offset_table ; 
 char const* function_base ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,int) ; 

const char *
FUNC2 (void)
{
  /* if dynamic-no-pic is on, we should not get here */
  FUNC0 (!MACHO_DYNAMIC_NO_PIC_P);

  if (function_base == NULL)
    function_base =
      (char *) FUNC1 ("<pic base>", sizeof ("<pic base>"));

  current_function_uses_pic_offset_table = 1;

  return function_base;
}