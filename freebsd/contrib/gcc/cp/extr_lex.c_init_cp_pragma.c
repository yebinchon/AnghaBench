
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int c_register_pragma (char*,char*,int ) ;
 int handle_pragma_implementation ;
 int handle_pragma_interface ;
 int handle_pragma_java_exceptions ;
 int handle_pragma_unit ;
 int handle_pragma_vtable ;

__attribute__((used)) static void
init_cp_pragma (void)
{
  c_register_pragma (0, "vtable", handle_pragma_vtable);
  c_register_pragma (0, "unit", handle_pragma_unit);
  c_register_pragma (0, "interface", handle_pragma_interface);
  c_register_pragma (0, "implementation", handle_pragma_implementation);
  c_register_pragma ("GCC", "interface", handle_pragma_interface);
  c_register_pragma ("GCC", "implementation", handle_pragma_implementation);
  c_register_pragma ("GCC", "java_exceptions", handle_pragma_java_exceptions);
}
