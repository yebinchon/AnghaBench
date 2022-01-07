
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* next; } ;
struct TYPE_6__ {TYPE_1__ header; } ;
typedef TYPE_2__ lang_statement_union_type ;
typedef int lang_output_section_statement_type ;


 int print_statement (TYPE_2__*,int *) ;

__attribute__((used)) static void
print_statement_list (lang_statement_union_type *s,
        lang_output_section_statement_type *os)
{
  while (s != ((void*)0))
    {
      print_statement (s, os);
      s = s->header.next;
    }
}
