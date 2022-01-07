
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {TYPE_6__* section; } ;
struct TYPE_12__ {TYPE_5__ input_section; } ;
typedef TYPE_2__ lang_statement_union_type ;
struct TYPE_13__ {int subsection_alignment; TYPE_6__* bfd_section; } ;
typedef TYPE_3__ lang_output_section_statement_type ;
struct TYPE_14__ {int just_syms_flag; } ;
typedef TYPE_4__ lang_input_statement_type ;
typedef TYPE_5__ lang_input_section_type ;
typedef int fill_type ;
typedef unsigned int bfd_vma ;
struct TYPE_16__ {int flags; int alignment_power; unsigned int output_offset; unsigned int vma; int size; TYPE_1__* owner; } ;
typedef TYPE_6__ asection ;
struct TYPE_11__ {scalar_t__ usrdata; } ;


 int SEC_EXCLUDE ;
 unsigned int TO_ADDR (int ) ;
 int TO_SIZE (unsigned int) ;
 unsigned int align_power (unsigned int,int) ;
 int insert_pad (TYPE_2__**,int *,int ,TYPE_6__*,unsigned int) ;

__attribute__((used)) static bfd_vma
size_input_section
  (lang_statement_union_type **this_ptr,
   lang_output_section_statement_type *output_section_statement,
   fill_type *fill,
   bfd_vma dot)
{
  lang_input_section_type *is = &((*this_ptr)->input_section);
  asection *i = is->section;

  if (!((lang_input_statement_type *) i->owner->usrdata)->just_syms_flag
      && (i->flags & SEC_EXCLUDE) == 0)
    {
      unsigned int alignment_needed;
      asection *o;






      if (output_section_statement->subsection_alignment != -1)
 i->alignment_power = output_section_statement->subsection_alignment;

      o = output_section_statement->bfd_section;
      if (o->alignment_power < i->alignment_power)
 o->alignment_power = i->alignment_power;

      alignment_needed = align_power (dot, i->alignment_power) - dot;

      if (alignment_needed != 0)
 {
   insert_pad (this_ptr, fill, TO_SIZE (alignment_needed), o, dot);
   dot += alignment_needed;
 }



      i->output_offset = dot - o->vma;


      dot += TO_ADDR (i->size);
      o->size = TO_SIZE (dot - o->vma);
    }
  else
    {
      i->output_offset = i->vma - output_section_statement->bfd_section->vma;
    }

  return dot;
}
