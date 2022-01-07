
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct dwarf2_locexpr_baton {int size; int data; } ;


 struct dwarf2_locexpr_baton* SYMBOL_LOCATION_BATON (struct symbol*) ;
 int dwarf2_loc_desc_needs_frame (int ,int ) ;

__attribute__((used)) static int
locexpr_read_needs_frame (struct symbol *symbol)
{
  struct dwarf2_locexpr_baton *dlbaton = SYMBOL_LOCATION_BATON (symbol);
  return dwarf2_loc_desc_needs_frame (dlbaton->data, dlbaton->size);
}
