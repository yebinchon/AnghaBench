
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_scope {int line; int file; } ;
struct macro_definition {int dummy; } ;


 struct macro_definition* macro_lookup_definition (int ,int ,char const*) ;

struct macro_definition *
standard_macro_lookup (const char *name, void *baton)
{
  struct macro_scope *ms = (struct macro_scope *) baton;

  return macro_lookup_definition (ms->file, ms->line, name);
}
