
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct alias {int name; int line; int file; } ;
typedef TYPE_1__* segT ;
struct TYPE_3__ {char const* name; } ;
typedef scalar_t__ PTR ;


 int _ (char*) ;
 int as_warn_where (int ,int ,int ,int ,char const*) ;
 TYPE_1__* bfd_get_section_by_name (int ,int ) ;
 int stdoutput ;

__attribute__((used)) static void
do_secalias (const char *alias, PTR value)
{
  struct alias *h = (struct alias *) value;
  segT sec = bfd_get_section_by_name (stdoutput, h->name);

  if (sec == ((void*)0))
    as_warn_where (h->file, h->line,
     _("section `%s' aliased to `%s' is not used"),
     h->name, alias);
  else
    sec->name = alias;
}
