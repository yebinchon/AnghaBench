
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
typedef struct TYPE_23__ TYPE_12__ ;
typedef struct TYPE_22__ TYPE_11__ ;
typedef struct TYPE_21__ TYPE_10__ ;


struct TYPE_21__ {int address; int section_name; TYPE_8__* segment; } ;
struct TYPE_31__ {int exp; } ;
struct TYPE_30__ {int exp; } ;
struct TYPE_28__ {TYPE_11__* head; } ;
struct TYPE_29__ {TYPE_4__ children; } ;
struct TYPE_27__ {char* target; } ;
struct TYPE_26__ {TYPE_11__* head; } ;
struct TYPE_23__ {int constraint; int flags; int addr_tree; TYPE_9__* bfd_section; TYPE_2__ children; int all_input_readonly; } ;
struct TYPE_25__ {int type; TYPE_11__* next; } ;
struct TYPE_22__ {TYPE_10__ address_statement; TYPE_7__ assignment_statement; TYPE_6__ data_statement; TYPE_5__ group_statement; TYPE_3__ target_statement; TYPE_12__ output_section_statement; int wild_statement; TYPE_1__ header; } ;
typedef TYPE_11__ lang_statement_union_type ;
typedef TYPE_12__ lang_output_section_statement_type ;
typedef int flagword ;
struct TYPE_33__ {int flags; } ;
struct TYPE_32__ {int used; } ;
struct TYPE_24__ {TYPE_11__* head; } ;


 int FAIL () ;
 int ONLY_IF_RO ;
 int ONLY_IF_RW ;
 int SEC_ALLOC ;
 int SEC_HAS_CONTENTS ;
 int SEC_LOAD ;
 int SEC_NEVER_LOAD ;
 int TRUE ;
 int check_input_sections (TYPE_11__*,TYPE_12__*) ;
 TYPE_18__ constructor_list ;
 int exp_init_os (int ) ;
 int init_os (TYPE_12__*,int *,int) ;
 TYPE_12__* lang_output_section_statement_lookup (int ) ;





 int wild (int *,char const*,TYPE_12__*) ;

__attribute__((used)) static void
map_input_to_output_sections
  (lang_statement_union_type *s, const char *target,
   lang_output_section_statement_type *os)
{
  flagword flags;

  for (; s != ((void*)0); s = s->header.next)
    {
      switch (s->header.type)
 {
 case 128:
   wild (&s->wild_statement, target, os);
   break;
 case 140:
   map_input_to_output_sections (constructor_list.head,
     target,
     os);
   break;
 case 133:
   if (s->output_section_statement.constraint)
     {
       if (s->output_section_statement.constraint != ONLY_IF_RW
    && s->output_section_statement.constraint != ONLY_IF_RO)
  break;
       s->output_section_statement.all_input_readonly = TRUE;
       check_input_sections (s->output_section_statement.children.head,
        &s->output_section_statement);
       if ((s->output_section_statement.all_input_readonly
     && s->output_section_statement.constraint == ONLY_IF_RW)
    || (!s->output_section_statement.all_input_readonly
        && s->output_section_statement.constraint == ONLY_IF_RO))
  {
    s->output_section_statement.constraint = -1;
    break;
  }
     }

   map_input_to_output_sections (s->output_section_statement.children.head,
     target,
     &s->output_section_statement);
   break;
 case 132:
   break;
 case 129:
   target = s->target_statement.target;
   break;
 case 137:
   map_input_to_output_sections (s->group_statement.children.head,
     target,
     os);
   break;
 case 139:


   exp_init_os (s->data_statement.exp);
   flags = SEC_HAS_CONTENTS;


   if (!(os->flags & SEC_NEVER_LOAD))
     flags |= SEC_ALLOC | SEC_LOAD;
   if (os->bfd_section == ((void*)0))
     init_os (os, ((void*)0), flags);
   else
     os->bfd_section->flags |= flags;
   break;
 case 136:
   break;
 case 138:
 case 134:
 case 130:
 case 131:
 case 135:
   if (os != ((void*)0) && os->bfd_section == ((void*)0))
     init_os (os, ((void*)0), 0);
   break;
 case 141:
   if (os != ((void*)0) && os->bfd_section == ((void*)0))
     init_os (os, ((void*)0), 0);



   exp_init_os (s->assignment_statement.exp);
   break;
 case 142:
   FAIL ();
   break;
 case 143:
   if (!s->address_statement.segment
       || !s->address_statement.segment->used)
     {
       lang_output_section_statement_type *aos
  = (lang_output_section_statement_lookup
     (s->address_statement.section_name));

       if (aos->bfd_section == ((void*)0))
  init_os (aos, ((void*)0), 0);
       aos->addr_tree = s->address_statement.address;
     }
   break;
 }
    }
}
