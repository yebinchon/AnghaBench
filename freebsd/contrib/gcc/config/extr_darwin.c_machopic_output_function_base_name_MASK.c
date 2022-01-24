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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACHO_DYNAMIC_NO_PIC_P ; 
 int /*<<< orphan*/  current_function_decl ; 
 int current_pic_label_num ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 char const* function_base_func_name ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void
FUNC4 (FILE *file)
{
  const char *current_name;

  /* If dynamic-no-pic is on, we should not get here.  */
  FUNC3 (!MACHO_DYNAMIC_NO_PIC_P);
  current_name =
    FUNC1 (FUNC0 (current_function_decl));
  if (function_base_func_name != current_name)
    {
      ++current_pic_label_num;
      function_base_func_name = current_name;
    }
  FUNC2 (file, "\"L%011d$pb\"", current_pic_label_num);
}