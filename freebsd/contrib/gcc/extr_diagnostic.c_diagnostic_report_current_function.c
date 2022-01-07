
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int diagnostic_context ;
struct TYPE_2__ {int (* print_error_function ) (int *,int ) ;} ;


 int diagnostic_report_current_module (int *) ;
 int input_filename ;
 TYPE_1__ lang_hooks ;
 int stub1 (int *,int ) ;

void
diagnostic_report_current_function (diagnostic_context *context)
{
  diagnostic_report_current_module (context);
  lang_hooks.print_error_function (context, input_filename);
}
