
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {int constraint; void* ignored; int section_relative_symbol; TYPE_6__* bfd_section; struct TYPE_18__* next; } ;
typedef TYPE_5__ lang_output_section_statement_type ;
typedef int bfd_boolean ;
struct TYPE_17__ {int * link_order; } ;
struct TYPE_16__ {int * link_order; TYPE_6__* s; } ;
struct TYPE_19__ {scalar_t__ rawsize; int flags; TYPE_4__ map_tail; TYPE_3__ map_head; } ;
typedef TYPE_6__ asection ;
struct TYPE_14__ {int phase; } ;
struct TYPE_22__ {scalar_t__ phase; TYPE_1__ dataseg; } ;
struct TYPE_21__ {TYPE_2__* head; } ;
struct TYPE_20__ {int section_count; } ;
struct TYPE_15__ {TYPE_5__ output_section_statement; } ;


 int FALSE ;
 int SEC_EXCLUDE ;
 int SEC_KEEP ;
 int SEC_LINKER_CREATED ;
 void* TRUE ;
 int bfd_section_list_remove (TYPE_7__*,TYPE_6__*) ;
 int bfd_section_removed_from_list (TYPE_7__*,TYPE_6__*) ;
 int exp_dataseg_none ;
 TYPE_9__ expld ;
 scalar_t__ lang_mark_phase_enum ;
 TYPE_8__ lang_output_section_statement ;
 int lang_reset_memory_regions () ;
 int one_lang_size_sections_pass (int *,int) ;
 TYPE_7__* output_bfd ;
 void* stripped_excluded_sections ;

void
strip_excluded_output_sections (void)
{
  lang_output_section_statement_type *os;


  if (expld.phase != lang_mark_phase_enum)
    {
      expld.phase = lang_mark_phase_enum;
      expld.dataseg.phase = exp_dataseg_none;
      one_lang_size_sections_pass (((void*)0), FALSE);
      lang_reset_memory_regions ();
    }

  for (os = &lang_output_section_statement.head->output_section_statement;
       os != ((void*)0);
       os = os->next)
    {
      asection *output_section;
      bfd_boolean exclude;

      if (os->constraint == -1)
 continue;

      output_section = os->bfd_section;
      if (output_section == ((void*)0))
 continue;

      exclude = (output_section->rawsize == 0
   && (output_section->flags & SEC_KEEP) == 0
   && !bfd_section_removed_from_list (output_bfd,
          output_section));





      if (exclude && output_section->map_head.s != ((void*)0))
 {
   asection *s;

   for (s = output_section->map_head.s; s != ((void*)0); s = s->map_head.s)
     if ((s->flags & SEC_LINKER_CREATED) != 0
  && (s->flags & SEC_EXCLUDE) == 0)
       {
  exclude = FALSE;
  break;
       }
 }


      output_section->map_head.link_order = ((void*)0);
      output_section->map_tail.link_order = ((void*)0);

      if (exclude)
 {


   if (!os->section_relative_symbol)
     os->ignored = TRUE;
   output_section->flags |= SEC_EXCLUDE;
   bfd_section_list_remove (output_bfd, output_section);
   output_bfd->section_count--;
 }
    }



  stripped_excluded_sections = TRUE;
}
