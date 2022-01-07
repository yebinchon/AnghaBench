
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lang_output_section_statement_type ;
struct TYPE_5__ {int head; } ;
struct TYPE_6__ {TYPE_1__ children; } ;
typedef TYPE_2__ lang_group_statement_type ;
struct TYPE_7__ {int map_file; } ;


 TYPE_4__ config ;
 int fprintf (int ,char*) ;
 int print_statement_list (int ,int *) ;

__attribute__((used)) static void
print_group (lang_group_statement_type *s,
      lang_output_section_statement_type *os)
{
  fprintf (config.map_file, "START GROUP\n");
  print_statement_list (s->children.head, os);
  fprintf (config.map_file, "END GROUP\n");
}
