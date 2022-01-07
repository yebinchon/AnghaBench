
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct demangle_builtin_type_info const* type; } ;
struct TYPE_4__ {TYPE_1__ s_builtin; } ;
struct demangle_component {TYPE_2__ u; int type; } ;
struct demangle_builtin_type_info {int dummy; } ;
struct d_info {int dummy; } ;


 int DEMANGLE_COMPONENT_BUILTIN_TYPE ;
 struct demangle_component* d_make_empty (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_make_builtin_type (struct d_info *di,
                     const struct demangle_builtin_type_info *type)
{
  struct demangle_component *p;

  if (type == ((void*)0))
    return ((void*)0);
  p = d_make_empty (di);
  if (p != ((void*)0))
    {
      p->type = DEMANGLE_COMPONENT_BUILTIN_TYPE;
      p->u.s_builtin.type = type;
    }
  return p;
}
