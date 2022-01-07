
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int diagnostic_info ;
struct TYPE_6__ {int printer; } ;
typedef TYPE_1__ diagnostic_context ;


 int cp_print_error_function (TYPE_1__*,int *) ;
 int diagnostic_build_prefix (int *) ;
 int diagnostic_report_current_module (TYPE_1__*) ;
 int maybe_print_instantiation_context (TYPE_1__*) ;
 int pp_base_set_prefix (int ,int ) ;

__attribute__((used)) static void
cp_diagnostic_starter (diagnostic_context *context,
         diagnostic_info *diagnostic)
{
  diagnostic_report_current_module (context);
  cp_print_error_function (context, diagnostic);
  maybe_print_instantiation_context (context);
  pp_base_set_prefix (context->printer, diagnostic_build_prefix (diagnostic));
}
