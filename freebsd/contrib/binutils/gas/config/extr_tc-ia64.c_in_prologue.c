
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prologue; } ;


 int check_pending_save () ;
 int in_procedure (char const*) ;
 TYPE_1__ unwind ;
 int unwind_diagnostic (char*,char const*) ;

__attribute__((used)) static int
in_prologue (const char *directive)
{
  int in = in_procedure (directive);

  if (in > 0 && !unwind.prologue)
    in = unwind_diagnostic ("prologue", directive);
  check_pending_save ();
  return in;
}
