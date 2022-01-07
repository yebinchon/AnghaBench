
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* op; } ;
struct TYPE_5__ {TYPE_1__ s_operator; } ;
struct demangle_component {TYPE_2__ u; int type; } ;
struct TYPE_6__ {int len; int args; int * name; } ;


 int DEMANGLE_COMPONENT_OPERATOR ;
 TYPE_3__* cplus_demangle_operators ;
 scalar_t__ strcmp (char const*,int *) ;
 int strlen (char const*) ;

int
cplus_demangle_fill_operator (struct demangle_component *p,
                              const char *opname, int args)
{
  int len;
  unsigned int i;

  if (p == ((void*)0) || opname == ((void*)0))
    return 0;
  len = strlen (opname);
  for (i = 0; cplus_demangle_operators[i].name != ((void*)0); ++i)
    {
      if (len == cplus_demangle_operators[i].len
   && args == cplus_demangle_operators[i].args
   && strcmp (opname, cplus_demangle_operators[i].name) == 0)
 {
   p->type = DEMANGLE_COMPONENT_OPERATOR;
   p->u.s_operator.op = &cplus_demangle_operators[i];
   return 1;
 }
    }
  return 0;
}
