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
 int /*<<< orphan*/  LIBUNWIND_SO ; 
 int /*<<< orphan*/  RTLD_NOW ; 
 int /*<<< orphan*/  create_addr_space_name ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  find_dyn_list_name ; 
 int /*<<< orphan*/  get_fpreg_name ; 
 int /*<<< orphan*/  get_reg_name ; 
 int /*<<< orphan*/  get_saveloc_name ; 
 int /*<<< orphan*/  init_remote_name ; 
 int /*<<< orphan*/  search_unwind_table_name ; 
 int /*<<< orphan*/  step_name ; 
 int /*<<< orphan*/ * unw_create_addr_space_p ; 
 int /*<<< orphan*/ * unw_find_dyn_list_p ; 
 int /*<<< orphan*/ * unw_get_fpreg_p ; 
 int /*<<< orphan*/ * unw_get_reg_p ; 
 int /*<<< orphan*/ * unw_get_saveloc_p ; 
 int /*<<< orphan*/ * unw_init_remote_p ; 
 int /*<<< orphan*/ * unw_search_unwind_table_p ; 
 int /*<<< orphan*/ * unw_step_p ; 

__attribute__((used)) static int
FUNC2 (void)
{
  void *handle;

  handle = FUNC0 (LIBUNWIND_SO, RTLD_NOW);
  if (handle == NULL)
    return 0;

  /* Initialize pointers to the dynamic library functions we will use.  */

  unw_get_reg_p = FUNC1 (handle, get_reg_name);
  if (unw_get_reg_p == NULL)
    return 0;

  unw_get_fpreg_p = FUNC1 (handle, get_fpreg_name);
  if (unw_get_fpreg_p == NULL)
    return 0;

  unw_get_saveloc_p = FUNC1 (handle, get_saveloc_name);
  if (unw_get_saveloc_p == NULL)
    return 0;

  unw_step_p = FUNC1 (handle, step_name);
  if (unw_step_p == NULL)
    return 0;

  unw_init_remote_p = FUNC1 (handle, init_remote_name);
  if (unw_init_remote_p == NULL)
    return 0;

  unw_create_addr_space_p = FUNC1 (handle, create_addr_space_name);
  if (unw_create_addr_space_p == NULL)
    return 0;

  unw_search_unwind_table_p = FUNC1 (handle, search_unwind_table_name);
  if (unw_search_unwind_table_p == NULL)
    return 0;

  unw_find_dyn_list_p = FUNC1 (handle, find_dyn_list_name);
  if (unw_find_dyn_list_p == NULL)
    return 0;
   
  return 1;
}