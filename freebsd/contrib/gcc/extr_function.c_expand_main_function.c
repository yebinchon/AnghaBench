
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCT_NORMAL ;
 int NAME__MAIN ;
 int VOIDmode ;
 int emit_library_call (int ,int ,int ,int ) ;
 int init_one_libfunc (int ) ;

void
expand_main_function (void)
{




  emit_library_call (init_one_libfunc (NAME__MAIN), LCT_NORMAL, VOIDmode, 0);

}
