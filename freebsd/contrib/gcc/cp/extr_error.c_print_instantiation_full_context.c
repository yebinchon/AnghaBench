
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int location_t ;
struct TYPE_4__ {int printer; } ;
typedef TYPE_1__ diagnostic_context ;


 int LOCATION_FILE (int ) ;
 scalar_t__ NULL_TREE ;
 int TFF_DECL_SPECIFIERS ;
 int TFF_RETURN_TYPE ;
 scalar_t__ TINST_DECL (scalar_t__) ;
 int TINST_LOCATION (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ current_function_decl ;
 scalar_t__ current_instantiation () ;
 int decl_as_string (scalar_t__,int) ;
 int input_location ;
 int pp_verbatim (int ,char*,int ,int ) ;
 int print_instantiation_partial_context (TYPE_1__*,scalar_t__,int ) ;

__attribute__((used)) static void
print_instantiation_full_context (diagnostic_context *context)
{
  tree p = current_instantiation ();
  location_t location = input_location;

  if (p)
    {
      if (current_function_decl != TINST_DECL (p)
   && current_function_decl != NULL_TREE)



 ;
      else
 {
   if (current_function_decl == TINST_DECL (p))
                                                         ;
   else
     pp_verbatim (context->printer,
    "%s: In instantiation of %qs:\n",
    LOCATION_FILE (location),
    decl_as_string (TINST_DECL (p),
      TFF_DECL_SPECIFIERS | TFF_RETURN_TYPE));

   location = TINST_LOCATION (p);
   p = TREE_CHAIN (p);
 }
    }

  print_instantiation_partial_context (context, p, location);
}
