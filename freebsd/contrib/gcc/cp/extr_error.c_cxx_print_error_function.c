
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int printer; } ;
typedef TYPE_1__ diagnostic_context ;


 int lhd_print_error_function (TYPE_1__*,char const*) ;
 int maybe_print_instantiation_context (TYPE_1__*) ;
 int pp_base_set_prefix (int ,char const*) ;

void
cxx_print_error_function (diagnostic_context *context, const char *file)
{
  lhd_print_error_function (context, file);
  pp_base_set_prefix (context->printer, file);
  maybe_print_instantiation_context (context);
}
