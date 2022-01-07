
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_word_t ;
typedef int unw_dyn_info_t ;
typedef int unw_addr_space_t ;


 int unw_find_dyn_list_p (int ,int *,void*) ;

unw_word_t
libunwind_find_dyn_list (unw_addr_space_t as, unw_dyn_info_t *di, void *arg)
{
  return unw_find_dyn_list_p (as, di, arg);
}
