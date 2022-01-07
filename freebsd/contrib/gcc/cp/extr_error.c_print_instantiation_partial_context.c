
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int location_t ;
struct TYPE_5__ {int line; int file; } ;
typedef TYPE_1__ expanded_location ;
struct TYPE_6__ {int printer; } ;
typedef TYPE_2__ diagnostic_context ;


 scalar_t__ NULL_TREE ;
 int TFF_DECL_SPECIFIERS ;
 int TFF_RETURN_TYPE ;
 int TINST_DECL (scalar_t__) ;
 int TINST_LOCATION (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int decl_as_string (int ,int) ;
 TYPE_1__ expand_location (int ) ;
 int pp_base_newline (int ) ;
 int pp_verbatim (int ,char*,int ,int ,...) ;

__attribute__((used)) static void
print_instantiation_partial_context (diagnostic_context *context,
         tree t, location_t loc)
{
  expanded_location xloc;
  for (; ; t = TREE_CHAIN (t))
    {
      xloc = expand_location (loc);
      if (t == NULL_TREE)
 break;
      pp_verbatim (context->printer, "%s:%d:   instantiated from %qs\n",
     xloc.file, xloc.line,
     decl_as_string (TINST_DECL (t),
       TFF_DECL_SPECIFIERS | TFF_RETURN_TYPE));
      loc = TINST_LOCATION (t);
    }
  pp_verbatim (context->printer, "%s:%d:   instantiated from here",
        xloc.file, xloc.line);
  pp_base_newline (context->printer);
}
