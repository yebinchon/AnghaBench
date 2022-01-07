
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct symbol {int dummy; } ;
struct dwarf2_locexpr_baton {int size; scalar_t__* data; TYPE_1__* objfile; } ;
struct TYPE_2__ {int name; } ;
typedef int CORE_ADDR ;


 int DWARF2_REG_TO_REGNUM (scalar_t__) ;
 scalar_t__ DW_OP_GNU_push_tls_address ;
 scalar_t__ DW_OP_addr ;
 scalar_t__ DW_OP_reg0 ;
 scalar_t__ DW_OP_reg31 ;
 int REGISTER_NAME (int) ;
 struct dwarf2_locexpr_baton* SYMBOL_LOCATION_BATON (struct symbol*) ;
 int dwarf2_read_address (scalar_t__*,scalar_t__*,int*) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int paddr_nz (int ) ;

__attribute__((used)) static int
locexpr_describe_location (struct symbol *symbol, struct ui_file *stream)
{

  struct dwarf2_locexpr_baton *dlbaton = SYMBOL_LOCATION_BATON (symbol);

  if (dlbaton->size == 1
      && dlbaton->data[0] >= DW_OP_reg0
      && dlbaton->data[0] <= DW_OP_reg31)
    {
      int regno = DWARF2_REG_TO_REGNUM (dlbaton->data[0] - DW_OP_reg0);
      fprintf_filtered (stream,
   "a variable in register %s", REGISTER_NAME (regno));
      return 1;
    }
  if (dlbaton->size > 1
      && dlbaton->data[dlbaton->size - 1] == DW_OP_GNU_push_tls_address)
    if (dlbaton->data[0] == DW_OP_addr)
      {
 int bytes_read;
 CORE_ADDR offset = dwarf2_read_address (&dlbaton->data[1],
      &dlbaton->data[dlbaton->size - 1],
      &bytes_read);
 fprintf_filtered (stream,
     "a thread-local variable at offset %s in the "
     "thread-local storage for `%s'",
     paddr_nz (offset), dlbaton->objfile->name);
 return 1;
      }


  fprintf_filtered (stream,
      "a variable with complex or multiple locations (DWARF2)");
  return 1;
}
