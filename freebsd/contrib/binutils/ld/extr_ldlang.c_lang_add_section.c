
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


typedef int lang_statement_list_type ;
struct TYPE_20__ {int sectype; int block_value; TYPE_14__* bfd_section; int name; } ;
typedef TYPE_5__ lang_output_section_statement_type ;
struct TYPE_21__ {TYPE_7__* section; } ;
typedef TYPE_6__ lang_input_section_type ;
typedef int flagword ;
typedef int bfd_boolean ;
struct TYPE_18__ {TYPE_7__* s; } ;
struct TYPE_17__ {TYPE_7__* s; } ;
struct TYPE_22__ {int flags; scalar_t__ entsize; scalar_t__ alignment_power; int owner; TYPE_14__* output_section; TYPE_3__ map_head; TYPE_2__ map_tail; } ;
typedef TYPE_7__ asection ;
struct TYPE_23__ {scalar_t__ strip; int relocatable; } ;
struct TYPE_19__ {TYPE_7__* s; } ;
struct TYPE_16__ {TYPE_7__* s; } ;
struct TYPE_15__ {int linker_has_input; int flags; scalar_t__ entsize; scalar_t__ alignment_power; TYPE_4__ map_head; TYPE_1__ map_tail; } ;


 int DISCARD_SECTION_NAME ;
 int SEC_ALLOC ;
 int SEC_DEBUGGING ;
 int SEC_EXCLUDE ;
 int SEC_LINK_DUPLICATES ;
 int SEC_LINK_ONCE ;
 int SEC_LOAD ;
 int SEC_MERGE ;
 int SEC_NEVER_LOAD ;
 int SEC_READONLY ;
 int SEC_SMALL_DATA ;
 int SEC_STRINGS ;
 int SEC_TIC54X_BLOCK ;
 int TRUE ;
 TYPE_14__* bfd_abs_section_ptr ;
 scalar_t__ bfd_arch_tic54x ;
 scalar_t__ bfd_get_arch (int ) ;
 int init_os (TYPE_5__*,TYPE_7__*,int) ;
 int lang_input_section ;
 TYPE_9__ link_info ;
 TYPE_6__* new_stat (int ,int *) ;




 scalar_t__ strcmp (int ,int ) ;
 scalar_t__ strip_all ;
 scalar_t__ strip_debugger ;
 int stripped_excluded_sections ;

void
lang_add_section (lang_statement_list_type *ptr,
    asection *section,
    lang_output_section_statement_type *output)
{
  flagword flags = section->flags;
  bfd_boolean discard;


  discard = (flags & SEC_EXCLUDE) != 0;



  if (strcmp (output->name, DISCARD_SECTION_NAME) == 0)
    discard = TRUE;



  if ((link_info.strip == strip_debugger || link_info.strip == strip_all)
      && (flags & SEC_DEBUGGING) != 0)
    discard = TRUE;

  if (discard)
    {
      if (section->output_section == ((void*)0))
 {

   section->output_section = bfd_abs_section_ptr;
 }
      return;
    }

  if (section->output_section == ((void*)0))
    {
      bfd_boolean first;
      lang_input_section_type *new;
      flagword flags;

      flags = section->flags;
      flags &= ~ SEC_NEVER_LOAD;

      switch (output->sectype)
 {
 case 129:
 case 128:
   break;
 case 131:
   flags &= ~SEC_ALLOC;
   break;
 case 130:
   flags &= ~SEC_LOAD;
   flags |= SEC_NEVER_LOAD;
   break;
 }

      if (output->bfd_section == ((void*)0))
 init_os (output, section, flags);

      first = ! output->bfd_section->linker_has_input;
      output->bfd_section->linker_has_input = 1;

      if (!link_info.relocatable
   && !stripped_excluded_sections)
 {
   asection *s = output->bfd_section->map_tail.s;
   output->bfd_section->map_tail.s = section;
   section->map_head.s = ((void*)0);
   section->map_tail.s = s;
   if (s != ((void*)0))
     s->map_head.s = section;
   else
     output->bfd_section->map_head.s = section;
 }


      new = new_stat (lang_input_section, ptr);

      new->section = section;
      section->output_section = output->bfd_section;






      if (! link_info.relocatable)
 flags &= ~ (SEC_LINK_ONCE | SEC_LINK_DUPLICATES);





      if (! first && (output->bfd_section->flags & SEC_READONLY) == 0)
 flags &= ~ SEC_READONLY;


      if (! first
   && ((output->bfd_section->flags & (SEC_MERGE | SEC_STRINGS))
       != (flags & (SEC_MERGE | SEC_STRINGS))
       || ((flags & SEC_MERGE)
    && output->bfd_section->entsize != section->entsize)))
 {
   output->bfd_section->flags &= ~ (SEC_MERGE | SEC_STRINGS);
   flags &= ~ (SEC_MERGE | SEC_STRINGS);
 }

      output->bfd_section->flags |= flags;

      if (flags & SEC_MERGE)
 output->bfd_section->entsize = section->entsize;



      if ((section->flags & SEC_READONLY) == 0)
 output->bfd_section->flags &= ~SEC_READONLY;


      if (section->flags & SEC_SMALL_DATA)
 output->bfd_section->flags |= SEC_SMALL_DATA;

      if (section->alignment_power > output->bfd_section->alignment_power)
 output->bfd_section->alignment_power = section->alignment_power;

      if (bfd_get_arch (section->owner) == bfd_arch_tic54x
   && (section->flags & SEC_TIC54X_BLOCK) != 0)
 {
   output->bfd_section->flags |= SEC_TIC54X_BLOCK;

   output->block_value = 128;
 }
    }
}
