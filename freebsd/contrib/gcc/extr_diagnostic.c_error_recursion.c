
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int kind; } ;
typedef TYPE_1__ diagnostic_info ;
struct TYPE_7__ {int lock; int printer; } ;
typedef TYPE_2__ diagnostic_context ;


 int DK_ICE ;
 int diagnostic_action_after_output (TYPE_2__*,TYPE_1__*) ;
 int fnotice (int ,char*) ;
 int pp_flush (int ) ;
 int real_abort () ;
 int stderr ;

__attribute__((used)) static void
error_recursion (diagnostic_context *context)
{
  diagnostic_info diagnostic;

  if (context->lock < 3)
    pp_flush (context->printer);

  fnotice (stderr,
    "Internal compiler error: Error reporting routines re-entered.\n");



  diagnostic.kind = DK_ICE;
  diagnostic_action_after_output (context, &diagnostic);



  real_abort ();
}
