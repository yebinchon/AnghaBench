
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct builtin {scalar_t__ value; int len; int name; } ;
typedef enum builtin_type { ____Placeholder_builtin_type } builtin_type ;
typedef int cpp_reader ;
struct TYPE_4__ {int builtin; } ;
struct TYPE_5__ {int flags; TYPE_1__ value; int type; } ;
typedef TYPE_2__ cpp_hashnode ;


 size_t ARRAY_SIZE (struct builtin const*) ;
 scalar_t__ CPP_OPTION (int *,int ) ;
 int NODE_BUILTIN ;
 int NODE_WARN ;
 int NT_MACRO ;
 struct builtin const* builtin_array ;
 TYPE_2__* cpp_lookup (int *,int ,int ) ;
 int std ;
 int stdc_0_in_system_headers ;
 int traditional ;

void
cpp_init_special_builtins (cpp_reader *pfile)
{
  const struct builtin *b;
  size_t n = ARRAY_SIZE (builtin_array);

  if (CPP_OPTION (pfile, traditional))
    n -= 2;
  else if (! CPP_OPTION (pfile, stdc_0_in_system_headers)
    || CPP_OPTION (pfile, std))
    n--;

  for (b = builtin_array; b < builtin_array + n; b++)
    {
      cpp_hashnode *hp = cpp_lookup (pfile, b->name, b->len);
      hp->type = NT_MACRO;
      hp->flags |= NODE_BUILTIN | NODE_WARN;
      hp->value.builtin = (enum builtin_type) b->value;
    }
}
