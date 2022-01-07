
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int quote_ignores_source_dir; TYPE_2__* bracket_include; TYPE_2__* quote_include; } ;
typedef TYPE_1__ cpp_reader ;
struct TYPE_7__ {int name; int len; int * name_map; struct TYPE_7__* next; } ;
typedef TYPE_2__ cpp_dir ;


 int strlen (int ) ;

void
cpp_set_include_chains (cpp_reader *pfile, cpp_dir *quote, cpp_dir *bracket,
   int quote_ignores_source_dir)
{
  pfile->quote_include = quote;
  pfile->bracket_include = quote;
  pfile->quote_ignores_source_dir = quote_ignores_source_dir;

  for (; quote; quote = quote->next)
    {
      quote->name_map = ((void*)0);
      quote->len = strlen (quote->name);
      if (quote == bracket)
 pfile->bracket_include = bracket;
    }
}
