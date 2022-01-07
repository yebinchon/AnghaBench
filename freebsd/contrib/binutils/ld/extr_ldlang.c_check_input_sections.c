
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* head; } ;
struct TYPE_11__ {TYPE_1__ children; } ;
struct TYPE_12__ {int type; TYPE_4__* next; } ;
struct TYPE_13__ {TYPE_2__ group_statement; int wild_statement; TYPE_3__ header; } ;
typedef TYPE_4__ lang_statement_union_type ;
struct TYPE_14__ {int all_input_readonly; } ;
typedef TYPE_5__ lang_output_section_statement_type ;
struct TYPE_15__ {TYPE_4__* head; } ;


 int check_section_callback ;
 TYPE_7__ constructor_list ;



 int walk_wild (int *,int ,TYPE_5__*) ;

__attribute__((used)) static void
check_input_sections
  (lang_statement_union_type *s,
   lang_output_section_statement_type *output_section_statement)
{
  for (; s != (lang_statement_union_type *) ((void*)0); s = s->header.next)
    {
      switch (s->header.type)
      {
      case 128:
 walk_wild (&s->wild_statement, check_section_callback,
     output_section_statement);
 if (! output_section_statement->all_input_readonly)
   return;
 break;
      case 130:
 check_input_sections (constructor_list.head,
         output_section_statement);
 if (! output_section_statement->all_input_readonly)
   return;
 break;
      case 129:
 check_input_sections (s->group_statement.children.head,
         output_section_statement);
 if (! output_section_statement->all_input_readonly)
   return;
 break;
      default:
 break;
      }
    }
}
