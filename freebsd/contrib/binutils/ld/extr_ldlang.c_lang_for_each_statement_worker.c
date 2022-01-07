
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_13__ {TYPE_8__* head; } ;
struct TYPE_14__ {TYPE_1__ children; } ;
struct TYPE_18__ {TYPE_8__* head; } ;
struct TYPE_19__ {TYPE_6__ children; } ;
struct TYPE_16__ {TYPE_8__* head; } ;
struct TYPE_17__ {TYPE_4__ children; } ;
struct TYPE_15__ {int type; TYPE_8__* next; } ;
struct TYPE_20__ {TYPE_2__ group_statement; TYPE_7__ wild_statement; TYPE_5__ output_section_statement; TYPE_3__ header; } ;
typedef TYPE_8__ lang_statement_union_type ;
struct TYPE_12__ {TYPE_8__* head; } ;


 int FAIL () ;
 TYPE_11__ constructor_list ;
__attribute__((used)) static void
lang_for_each_statement_worker (void (*func) (lang_statement_union_type *),
    lang_statement_union_type *s)
{
  for (; s != ((void*)0); s = s->header.next)
    {
      func (s);

      switch (s->header.type)
 {
 case 140:
   lang_for_each_statement_worker (func, constructor_list.head);
   break;
 case 133:
   lang_for_each_statement_worker
     (func, s->output_section_statement.children.head);
   break;
 case 128:
   lang_for_each_statement_worker (func,
       s->wild_statement.children.head);
   break;
 case 137:
   lang_for_each_statement_worker (func,
       s->group_statement.children.head);
   break;
 case 139:
 case 130:
 case 134:
 case 132:
 case 129:
 case 136:
 case 135:
 case 141:
 case 131:
 case 142:
 case 138:
   break;
 default:
   FAIL ();
   break;
 }
    }
}
