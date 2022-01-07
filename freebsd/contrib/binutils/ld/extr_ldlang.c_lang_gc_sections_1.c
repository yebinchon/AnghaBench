
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_6__* head; } ;
struct TYPE_13__ {TYPE_4__ children; } ;
struct TYPE_10__ {TYPE_6__* head; } ;
struct TYPE_11__ {TYPE_2__ children; } ;
struct TYPE_9__ {int type; TYPE_6__* next; } ;
struct TYPE_14__ {TYPE_5__ group_statement; TYPE_3__ output_section_statement; int wild_statement; TYPE_1__ header; } ;
typedef TYPE_6__ lang_statement_union_type ;
struct TYPE_15__ {TYPE_6__* head; } ;


 TYPE_8__ constructor_list ;
 int gc_section_callback ;




 int walk_wild (int *,int ,int *) ;

__attribute__((used)) static void
lang_gc_sections_1 (lang_statement_union_type *s)
{
  for (; s != ((void*)0); s = s->header.next)
    {
      switch (s->header.type)
 {
 case 128:
   walk_wild (&s->wild_statement, gc_section_callback, ((void*)0));
   break;
 case 131:
   lang_gc_sections_1 (constructor_list.head);
   break;
 case 129:
   lang_gc_sections_1 (s->output_section_statement.children.head);
   break;
 case 130:
   lang_gc_sections_1 (s->group_statement.children.head);
   break;
 default:
   break;
 }
    }
}
