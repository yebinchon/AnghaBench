
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_18__ ;
typedef struct TYPE_23__ TYPE_17__ ;
typedef struct TYPE_22__ TYPE_15__ ;
typedef struct TYPE_21__ TYPE_13__ ;
typedef struct TYPE_20__ TYPE_11__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct bfd_link_hash_entry {int dummy; } ;
struct TYPE_33__ {int type; TYPE_10__* next; } ;
struct TYPE_21__ {void* loaded; int the_bfd; int whole_archive; int target; int real; } ;
struct TYPE_32__ {int target; } ;
struct TYPE_30__ {TYPE_10__* head; } ;
struct TYPE_31__ {TYPE_6__ children; } ;
struct TYPE_27__ {TYPE_10__* head; } ;
struct TYPE_28__ {TYPE_3__ children; int filename; } ;
struct TYPE_25__ {TYPE_10__* head; } ;
struct TYPE_26__ {TYPE_1__ children; } ;
struct TYPE_19__ {TYPE_9__ header; TYPE_13__ input_statement; TYPE_8__ target_statement; TYPE_7__ group_statement; TYPE_4__ wild_statement; TYPE_2__ output_section_statement; } ;
typedef TYPE_10__ lang_statement_union_type ;
struct TYPE_20__ {TYPE_10__* head; TYPE_10__** tail; } ;
typedef TYPE_11__ lang_statement_list_type ;
typedef int bfd_boolean ;
struct TYPE_29__ {struct bfd_link_hash_entry* undefs_tail; } ;
struct TYPE_24__ {void* make_executable; } ;
struct TYPE_23__ {TYPE_10__* head; } ;
struct TYPE_22__ {TYPE_5__* hash; } ;


 void* FALSE ;
 int TRUE ;
 int bfd_archive ;
 int bfd_check_format (int ,int ) ;
 TYPE_18__ config ;
 TYPE_17__ constructor_list ;
 int current_target ;



 int lang_list_init (TYPE_11__*) ;



 TYPE_15__ link_info ;
 int load_symbols (TYPE_13__*,TYPE_11__*) ;
 int lookup_name (int ) ;
 int wildcardp (int ) ;

__attribute__((used)) static void
open_input_bfds (lang_statement_union_type *s, bfd_boolean force)
{
  for (; s != ((void*)0); s = s->header.next)
    {
      switch (s->header.type)
 {
 case 133:
   open_input_bfds (constructor_list.head, force);
   break;
 case 130:
   open_input_bfds (s->output_section_statement.children.head, force);
   break;
 case 128:

   if (s->wild_statement.filename
       && ! wildcardp (s->wild_statement.filename))
     lookup_name (s->wild_statement.filename);
   open_input_bfds (s->wild_statement.children.head, force);
   break;
 case 132:
   {
     struct bfd_link_hash_entry *undefs;





     do
       {
  undefs = link_info.hash->undefs_tail;
  open_input_bfds (s->group_statement.children.head, TRUE);
       }
     while (undefs != link_info.hash->undefs_tail);
   }
   break;
 case 129:
   current_target = s->target_statement.target;
   break;
 case 131:
   if (s->input_statement.real)
     {
       lang_statement_list_type add;

       s->input_statement.target = current_target;





       if (force
    && !s->input_statement.whole_archive
    && s->input_statement.loaded
    && bfd_check_format (s->input_statement.the_bfd,
           bfd_archive))
  s->input_statement.loaded = FALSE;

       lang_list_init (&add);

       if (! load_symbols (&s->input_statement, &add))
  config.make_executable = FALSE;

       if (add.head != ((void*)0))
  {
    *add.tail = s->header.next;
    s->header.next = add.head;
  }
     }
   break;
 default:
   break;
 }
    }
}
