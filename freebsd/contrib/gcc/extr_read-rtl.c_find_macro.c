
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapping {int index; } ;
struct macro_group {int num_builtins; int (* find_builtin ) (char const*,int *) ;int macros; } ;
typedef int FILE ;


 scalar_t__ htab_find (int ,char const**) ;
 int stub1 (char const*,int *) ;

__attribute__((used)) static int
find_macro (struct macro_group *group, const char *name, FILE *infile)
{
  struct mapping *m;

  m = (struct mapping *) htab_find (group->macros, &name);
  if (m != 0)
    return m->index + group->num_builtins;
  return group->find_builtin (name, infile);
}
