
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ addressprint ;
 int current_gdbarch ;
 int current_target ;
 int demangle ;
 int fputs_filtered (char*,struct ui_file*) ;
 scalar_t__ gdbarch_convert_from_func_ptr_addr (int ,scalar_t__,int *) ;
 int print_address_demangle (scalar_t__,struct ui_file*,int ) ;
 int print_address_numeric (scalar_t__,int,struct ui_file*) ;

__attribute__((used)) static void
print_function_pointer_address (CORE_ADDR address, struct ui_file *stream)
{
  CORE_ADDR func_addr = gdbarch_convert_from_func_ptr_addr (current_gdbarch,
           address,
           &current_target);



  if (addressprint && func_addr != address)
    {
      fputs_filtered ("@", stream);
      print_address_numeric (address, 1, stream);
      fputs_filtered (": ", stream);
    }
  print_address_demangle (func_addr, stream, demangle);
}
