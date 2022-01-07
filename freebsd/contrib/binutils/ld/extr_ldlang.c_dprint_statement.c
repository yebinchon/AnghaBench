
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* next; } ;
struct TYPE_8__ {TYPE_1__ header; } ;
typedef TYPE_2__ lang_statement_union_type ;
struct TYPE_9__ {int * map_file; } ;
typedef int FILE ;


 int abs_output_section ;
 TYPE_6__ config ;
 int print_statement (TYPE_2__*,int ) ;
 int print_statement_list (TYPE_2__*,int ) ;
 int * stderr ;

void
dprint_statement (lang_statement_union_type *s, int n)
{
  FILE *map_save = config.map_file;

  config.map_file = stderr;

  if (n < 0)
    print_statement_list (s, abs_output_section);
  else
    {
      while (s && --n >= 0)
 {
   print_statement (s, abs_output_section);
   s = s->header.next;
 }
    }

  config.map_file = map_save;
}
