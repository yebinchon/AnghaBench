
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* type; } ;
struct TYPE_5__ {TYPE_1__ s_builtin; } ;
struct demangle_component {TYPE_2__ u; int type; } ;
struct TYPE_6__ {int len; int name; } ;


 int DEMANGLE_COMPONENT_BUILTIN_TYPE ;
 unsigned int D_BUILTIN_TYPE_COUNT ;
 TYPE_3__* cplus_demangle_builtin_types ;
 scalar_t__ strcmp (char const*,int ) ;
 int strlen (char const*) ;

int
cplus_demangle_fill_builtin_type (struct demangle_component *p,
                                  const char *type_name)
{
  int len;
  unsigned int i;

  if (p == ((void*)0) || type_name == ((void*)0))
    return 0;
  len = strlen (type_name);
  for (i = 0; i < D_BUILTIN_TYPE_COUNT; ++i)
    {
      if (len == cplus_demangle_builtin_types[i].len
   && strcmp (type_name, cplus_demangle_builtin_types[i].name) == 0)
 {
   p->type = DEMANGLE_COMPONENT_BUILTIN_TYPE;
   p->u.s_builtin.type = &cplus_demangle_builtin_types[i];
   return 1;
 }
    }
  return 0;
}
