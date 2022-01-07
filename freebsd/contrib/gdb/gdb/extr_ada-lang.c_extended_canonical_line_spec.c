
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtab_and_line {int line; TYPE_1__* symtab; } ;
struct TYPE_2__ {char* filename; } ;


 int sprintf (char*,char*,char const*,char const*,int) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ xmalloc (scalar_t__) ;

__attribute__((used)) static char *
extended_canonical_line_spec (struct symtab_and_line sal, const char *name)
{
  char *r;

  if (sal.symtab == ((void*)0) || sal.symtab->filename == ((void*)0) || sal.line <= 0)
    return ((void*)0);

  r = (char *) xmalloc (strlen (name) + strlen (sal.symtab->filename)
   + sizeof (sal.line) * 3 + 3);
  sprintf (r, "%s:'%s':%d", sal.symtab->filename, name, sal.line);
  return r;
}
