
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int type_p ;
struct fileloc {int dummy; } ;
typedef TYPE_1__* pair_p ;
struct TYPE_3__ {int type; int name; struct TYPE_3__* next; } ;


 int create_scalar_type (char*,int) ;
 int error_at_line (struct fileloc*,char*,char const*) ;
 scalar_t__ strcmp (int ,char const*) ;
 TYPE_1__* typedefs ;

type_p
resolve_typedef (const char *s, struct fileloc *pos)
{
  pair_p p;
  for (p = typedefs; p != ((void*)0); p = p->next)
    if (strcmp (p->name, s) == 0)
      return p->type;
  error_at_line (pos, "unidentified type `%s'", s);
  return create_scalar_type ("char", 4);
}
