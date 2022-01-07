
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MACHO_DYNAMIC_NO_PIC_P ;
 int current_function_uses_pic_offset_table ;
 char const* function_base ;
 int gcc_assert (int) ;
 scalar_t__ ggc_alloc_string (char*,int) ;

const char *
machopic_function_base_name (void)
{

  gcc_assert (!MACHO_DYNAMIC_NO_PIC_P);

  if (function_base == ((void*)0))
    function_base =
      (char *) ggc_alloc_string ("<pic base>", sizeof ("<pic base>"));

  current_function_uses_pic_offset_table = 1;

  return function_base;
}
