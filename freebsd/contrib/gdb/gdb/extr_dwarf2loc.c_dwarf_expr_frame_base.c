
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct dwarf_expr_baton {int frame; } ;
struct dwarf2_loclist_baton {int dummy; } ;
struct dwarf2_locexpr_baton {size_t size; unsigned char* data; } ;


 void* SYMBOL_LOCATION_BATON (struct symbol*) ;
 int SYMBOL_NATURAL_NAME (struct symbol*) ;
 int * SYMBOL_OPS (struct symbol*) ;
 int dwarf2_loclist_funcs ;
 int error (char*,int ) ;
 unsigned char* find_location_expression (struct dwarf2_loclist_baton*,size_t*,int ) ;
 struct symbol* get_frame_function (int ) ;
 int get_frame_pc (int ) ;

__attribute__((used)) static void
dwarf_expr_frame_base (void *baton, unsigned char **start, size_t * length)
{



  struct symbol *framefunc;
  struct dwarf_expr_baton *debaton = (struct dwarf_expr_baton *) baton;

  framefunc = get_frame_function (debaton->frame);

  if (SYMBOL_OPS (framefunc) == &dwarf2_loclist_funcs)
    {
      struct dwarf2_loclist_baton *symbaton;
      symbaton = SYMBOL_LOCATION_BATON (framefunc);
      *start = find_location_expression (symbaton, length,
      get_frame_pc (debaton->frame));
    }
  else
    {
      struct dwarf2_locexpr_baton *symbaton;
      symbaton = SYMBOL_LOCATION_BATON (framefunc);
      *length = symbaton->size;
      *start = symbaton->data;
    }

  if (*start == ((void*)0))
    error ("Could not find the frame base for \"%s\".",
    SYMBOL_NATURAL_NAME (framefunc));
}
