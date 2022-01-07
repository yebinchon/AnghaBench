
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_word_t ;
typedef int unw_addr_space_t ;


 int unw_search_unwind_table_p (int ,int ,void*,void*,int,void*) ;

int
libunwind_search_unwind_table (void *as, long ip, void *di,
          void *pi, int need_unwind_info, void *args)
{
  return unw_search_unwind_table_p (*(unw_addr_space_t *)as, (unw_word_t )ip,
        di, pi, need_unwind_info, args);
}
