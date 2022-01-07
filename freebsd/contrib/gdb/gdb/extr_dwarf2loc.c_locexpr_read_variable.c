
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct symbol {int dummy; } ;
struct frame_info {int dummy; } ;
struct dwarf2_locexpr_baton {int objfile; int size; int data; } ;


 struct dwarf2_locexpr_baton* SYMBOL_LOCATION_BATON (struct symbol*) ;
 struct value* dwarf2_evaluate_loc_desc (struct symbol*,struct frame_info*,int ,int ,int ) ;

__attribute__((used)) static struct value *
locexpr_read_variable (struct symbol *symbol, struct frame_info *frame)
{
  struct dwarf2_locexpr_baton *dlbaton = SYMBOL_LOCATION_BATON (symbol);
  struct value *val;
  val = dwarf2_evaluate_loc_desc (symbol, frame, dlbaton->data, dlbaton->size,
      dlbaton->objfile);

  return val;
}
