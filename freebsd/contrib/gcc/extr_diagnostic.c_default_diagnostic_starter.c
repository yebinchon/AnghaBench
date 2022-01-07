
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int diagnostic_info ;
struct TYPE_4__ {int printer; } ;
typedef TYPE_1__ diagnostic_context ;


 int diagnostic_build_prefix (int *) ;
 int diagnostic_report_current_function (TYPE_1__*) ;
 int pp_set_prefix (int ,int ) ;

__attribute__((used)) static void
default_diagnostic_starter (diagnostic_context *context,
       diagnostic_info *diagnostic)
{
  diagnostic_report_current_function (context);
  pp_set_prefix (context->printer, diagnostic_build_prefix (diagnostic));
}
