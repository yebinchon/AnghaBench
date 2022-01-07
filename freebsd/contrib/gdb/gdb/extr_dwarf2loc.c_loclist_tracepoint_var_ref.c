
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct dwarf2_loclist_baton {int dummy; } ;
struct axs_value {int dummy; } ;
struct agent_expr {int scope; } ;


 struct dwarf2_loclist_baton* SYMBOL_LOCATION_BATON (struct symbol*) ;
 int SYMBOL_NATURAL_NAME (struct symbol*) ;
 int dwarf2_tracepoint_var_ref (struct symbol*,struct agent_expr*,struct axs_value*,unsigned char*,size_t) ;
 int error (char*,int ) ;
 unsigned char* find_location_expression (struct dwarf2_loclist_baton*,size_t*,int ) ;

__attribute__((used)) static void
loclist_tracepoint_var_ref (struct symbol * symbol, struct agent_expr * ax,
       struct axs_value * value)
{
  struct dwarf2_loclist_baton *dlbaton = SYMBOL_LOCATION_BATON (symbol);
  unsigned char *data;
  size_t size;

  data = find_location_expression (dlbaton, &size, ax->scope);
  if (data == ((void*)0))
    error ("Variable \"%s\" is not available.", SYMBOL_NATURAL_NAME (symbol));

  dwarf2_tracepoint_var_ref (symbol, ax, value, data, size);
}
