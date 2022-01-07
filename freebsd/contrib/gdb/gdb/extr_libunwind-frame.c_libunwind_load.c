
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIBUNWIND_SO ;
 int RTLD_NOW ;
 int create_addr_space_name ;
 void* dlopen (int ,int ) ;
 void* dlsym (void*,int ) ;
 int find_dyn_list_name ;
 int get_fpreg_name ;
 int get_reg_name ;
 int get_saveloc_name ;
 int init_remote_name ;
 int search_unwind_table_name ;
 int step_name ;
 int * unw_create_addr_space_p ;
 int * unw_find_dyn_list_p ;
 int * unw_get_fpreg_p ;
 int * unw_get_reg_p ;
 int * unw_get_saveloc_p ;
 int * unw_init_remote_p ;
 int * unw_search_unwind_table_p ;
 int * unw_step_p ;

__attribute__((used)) static int
libunwind_load (void)
{
  void *handle;

  handle = dlopen (LIBUNWIND_SO, RTLD_NOW);
  if (handle == ((void*)0))
    return 0;



  unw_get_reg_p = dlsym (handle, get_reg_name);
  if (unw_get_reg_p == ((void*)0))
    return 0;

  unw_get_fpreg_p = dlsym (handle, get_fpreg_name);
  if (unw_get_fpreg_p == ((void*)0))
    return 0;

  unw_get_saveloc_p = dlsym (handle, get_saveloc_name);
  if (unw_get_saveloc_p == ((void*)0))
    return 0;

  unw_step_p = dlsym (handle, step_name);
  if (unw_step_p == ((void*)0))
    return 0;

  unw_init_remote_p = dlsym (handle, init_remote_name);
  if (unw_init_remote_p == ((void*)0))
    return 0;

  unw_create_addr_space_p = dlsym (handle, create_addr_space_name);
  if (unw_create_addr_space_p == ((void*)0))
    return 0;

  unw_search_unwind_table_p = dlsym (handle, search_unwind_table_name);
  if (unw_search_unwind_table_p == ((void*)0))
    return 0;

  unw_find_dyn_list_p = dlsym (handle, find_dyn_list_name);
  if (unw_find_dyn_list_p == ((void*)0))
    return 0;

  return 1;
}
