
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct decision* first; } ;
struct decision {struct decision* next; TYPE_1__ success; } ;


 int debug_decision_1 (struct decision*,int) ;
 int fputs (char*,int ) ;
 int putc (char,int ) ;
 int stderr ;

__attribute__((used)) static void
debug_decision_0 (struct decision *d, int indent, int maxdepth)
{
  struct decision *n;
  int i;

  if (maxdepth < 0)
    return;
  if (d == ((void*)0))
    {
      for (i = 0; i < indent; ++i)
 putc (' ', stderr);
      fputs ("(nil)\n", stderr);
      return;
    }

  debug_decision_1 (d, indent);
  for (n = d->success.first; n ; n = n->next)
    debug_decision_0 (n, indent + 2, maxdepth - 1);
}
