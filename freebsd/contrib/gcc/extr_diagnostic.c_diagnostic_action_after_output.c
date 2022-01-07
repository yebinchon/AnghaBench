
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kind; } ;
typedef TYPE_1__ diagnostic_info ;
struct TYPE_6__ {int abort_on_error; } ;
typedef TYPE_2__ diagnostic_context ;
 int FATAL_EXIT_CODE ;
 int ICE_EXIT_CODE ;
 int bug_report_url ;
 int exit (int ) ;
 int flag_fatal_errors ;
 int fnotice (int ,char*,...) ;
 int gcc_unreachable () ;
 int real_abort () ;
 int stderr ;

__attribute__((used)) static void
diagnostic_action_after_output (diagnostic_context *context,
    diagnostic_info *diagnostic)
{
  switch (diagnostic->kind)
    {
    case 134:
    case 130:
    case 135:
    case 128:
      break;

    case 133:
    case 129:
      if (context->abort_on_error)
 real_abort ();
      if (flag_fatal_errors)
 {
   fnotice (stderr, "compilation terminated due to -Wfatal-errors.\n");
   exit (FATAL_EXIT_CODE);
 }
      break;

    case 131:
      if (context->abort_on_error)
 real_abort ();

      fnotice (stderr, "Please submit a full bug report,\n"
        "with preprocessed source if appropriate.\n"
        "See %s for instructions.\n", bug_report_url);
      exit (ICE_EXIT_CODE);

    case 132:
      if (context->abort_on_error)
 real_abort ();

      fnotice (stderr, "compilation terminated.\n");
      exit (FATAL_EXIT_CODE);

    default:
      gcc_unreachable ();
    }
}
