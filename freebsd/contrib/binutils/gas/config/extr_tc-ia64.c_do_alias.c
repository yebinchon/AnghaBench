
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
struct alias {int name; int line; int file; } ;
typedef scalar_t__ PTR ;


 int S_SET_NAME (int *,char*) ;
 int _ (char*) ;
 int as_warn_where (int ,int ,int ,int ,char const*) ;
 int * symbol_find (int ) ;

__attribute__((used)) static void
do_alias (const char *alias, PTR value)
{
  struct alias *h = (struct alias *) value;
  symbolS *sym = symbol_find (h->name);

  if (sym == ((void*)0))
    as_warn_where (h->file, h->line,
     _("symbol `%s' aliased to `%s' is not used"),
     h->name, alias);
    else
      S_SET_NAME (sym, (char *) alias);
}
