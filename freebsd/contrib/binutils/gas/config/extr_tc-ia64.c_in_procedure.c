
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sym; } ;
struct TYPE_4__ {int saved_text_seg; TYPE_1__ proc_pending; } ;


 scalar_t__ strcmp (char const*,char*) ;
 TYPE_2__ unwind ;
 int unwind_diagnostic (char*,char const*) ;

__attribute__((used)) static int
in_procedure (const char *directive)
{
  if (unwind.proc_pending.sym
      && (!unwind.saved_text_seg || strcmp (directive, "endp") == 0))
    return 1;
  return unwind_diagnostic ("procedure", directive);
}
