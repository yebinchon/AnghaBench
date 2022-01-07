
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct dwarf2_locexpr_baton {int size; int data; } ;
struct axs_value {int dummy; } ;
struct agent_expr {int dummy; } ;


 struct dwarf2_locexpr_baton* SYMBOL_LOCATION_BATON (struct symbol*) ;
 int dwarf2_tracepoint_var_ref (struct symbol*,struct agent_expr*,struct axs_value*,int ,int ) ;

__attribute__((used)) static void
locexpr_tracepoint_var_ref (struct symbol * symbol, struct agent_expr * ax,
       struct axs_value * value)
{
  struct dwarf2_locexpr_baton *dlbaton = SYMBOL_LOCATION_BATON (symbol);

  dwarf2_tracepoint_var_ref (symbol, ax, value, dlbaton->data, dlbaton->size);
}
