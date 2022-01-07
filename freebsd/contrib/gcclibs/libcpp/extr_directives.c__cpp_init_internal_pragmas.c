
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpp_reader ;


 int do_pragma_dependency ;
 int do_pragma_mark ;
 int do_pragma_once ;
 int do_pragma_poison ;
 int do_pragma_system_header ;
 int register_pragma_internal (int *,char*,char*,int ) ;

void
_cpp_init_internal_pragmas (cpp_reader *pfile)
{

  register_pragma_internal (pfile, 0, "once", do_pragma_once);

  register_pragma_internal (pfile, 0, "mark", do_pragma_mark);


  register_pragma_internal (pfile, "GCC", "poison", do_pragma_poison);
  register_pragma_internal (pfile, "GCC", "system_header",
       do_pragma_system_header);
  register_pragma_internal (pfile, "GCC", "dependency", do_pragma_dependency);
}
