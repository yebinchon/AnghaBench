
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_14__ {int sorted; } ;
struct wildcard_list {TYPE_3__ spec; struct wildcard_list* next; } ;
struct TYPE_17__ {TYPE_8__* head; } ;
struct TYPE_18__ {TYPE_6__ children; } ;
struct TYPE_15__ {TYPE_8__* head; } ;
struct TYPE_16__ {TYPE_4__ children; } ;
struct TYPE_13__ {struct wildcard_list* section_list; } ;
struct TYPE_12__ {int type; TYPE_8__* next; } ;
struct TYPE_19__ {TYPE_7__ group_statement; TYPE_5__ output_section_statement; TYPE_2__ wild_statement; TYPE_1__ header; } ;
typedef TYPE_8__ lang_statement_union_type ;
struct TYPE_11__ {TYPE_8__* head; } ;


 int FAIL () ;

 int by_alignment_name ;

 int by_name_alignment ;
 TYPE_10__ constructor_list ;





 int sort_section ;

__attribute__((used)) static void
update_wild_statements (lang_statement_union_type *s)
{
  struct wildcard_list *sec;

  switch (sort_section)
    {
    default:
      FAIL ();

    case 128:
      break;

    case 133:
    case 134:
      for (; s != ((void*)0); s = s->header.next)
 {
   switch (s->header.type)
     {
     default:
       break;

     case 129:
       sec = s->wild_statement.section_list;
       for (sec = s->wild_statement.section_list; sec != ((void*)0);
     sec = sec->next)
  {
    switch (sec->spec.sorted)
      {
      case 128:
        sec->spec.sorted = sort_section;
        break;
      case 133:
        if (sort_section == 134)
   sec->spec.sorted = by_name_alignment;
        break;
      case 134:
        if (sort_section == 133)
   sec->spec.sorted = by_alignment_name;
        break;
      default:
        break;
      }
  }
       break;

     case 132:
       update_wild_statements (constructor_list.head);
       break;

     case 130:
       update_wild_statements
  (s->output_section_statement.children.head);
       break;

     case 131:
       update_wild_statements (s->group_statement.children.head);
       break;
     }
 }
      break;
    }
}
