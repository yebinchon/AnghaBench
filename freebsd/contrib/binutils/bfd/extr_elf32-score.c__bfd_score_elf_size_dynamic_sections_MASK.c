#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct bfd_link_info {int flags; int /*<<< orphan*/  shared; } ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_11__ {TYPE_2__* sections; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_12__ {scalar_t__ size; int flags; int /*<<< orphan*/ * contents; scalar_t__ reloc_count; struct TYPE_12__* output_section; TYPE_1__* owner; struct TYPE_12__* next; } ;
typedef  TYPE_2__ asection ;
struct TYPE_13__ {scalar_t__ dynamic_sections_created; TYPE_1__* dynobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int DF_TEXTREL ; 
 int /*<<< orphan*/  DT_DEBUG ; 
 int /*<<< orphan*/  DT_PLTGOT ; 
 int /*<<< orphan*/  DT_REL ; 
 int /*<<< orphan*/  DT_RELENT ; 
 int /*<<< orphan*/  DT_RELSZ ; 
 int /*<<< orphan*/  DT_SCORE_BASE_ADDRESS ; 
 int /*<<< orphan*/  DT_SCORE_GOTSYM ; 
 int /*<<< orphan*/  DT_SCORE_HIPAGENO ; 
 int /*<<< orphan*/  DT_SCORE_LOCAL_GOTNO ; 
 int /*<<< orphan*/  DT_SCORE_SYMTABNO ; 
 int /*<<< orphan*/  DT_SCORE_UNREFEXTNO ; 
 int /*<<< orphan*/  DT_TEXTREL ; 
 scalar_t__ ELF_DYNAMIC_INTERPRETER ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 (struct bfd_link_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* SCORE_ELF_STUB_SECTION_NAME ; 
 scalar_t__ SCORE_FUNCTION_STUB_SIZE ; 
 int SEC_ALLOC ; 
 int SEC_EXCLUDE ; 
 int SEC_LINKER_CREATED ; 
 int SEC_READONLY ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  bfd_error_no_memory ; 
 TYPE_2__* FUNC3 (TYPE_1__*,char const*) ; 
 char* FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,scalar_t__) ; 
 TYPE_4__* FUNC7 (struct bfd_link_info*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC11 (bfd *output_bfd, struct bfd_link_info *info)
{
  bfd *dynobj;
  asection *s;
  bfd_boolean reltext;

  dynobj = FUNC7 (info)->dynobj;
  FUNC0 (dynobj != NULL);

  if (FUNC7 (info)->dynamic_sections_created)
    {
      /* Set the contents of the .interp section to the interpreter.  */
      if (!info->shared)
        {
          s = FUNC3 (dynobj, ".interp");
          FUNC0 (s != NULL);
          s->size = FUNC10 (ELF_DYNAMIC_INTERPRETER) + 1;
          s->contents = (bfd_byte *) ELF_DYNAMIC_INTERPRETER;
        }
    }

  /* The check_relocs and adjust_dynamic_symbol entry points have
     determined the sizes of the various dynamic sections.  Allocate
     memory for them.  */
  reltext = FALSE;
  for (s = dynobj->sections; s != NULL; s = s->next)
    {
      const char *name;

      if ((s->flags & SEC_LINKER_CREATED) == 0)
        continue;

      /* It's OK to base decisions on the section name, because none
         of the dynobj section names depend upon the input files.  */
      name = FUNC4 (dynobj, s);

      if (FUNC1 (name, ".rel"))
        {
          if (s->size == 0)
            {
              /* We only strip the section if the output section name
                 has the same name.  Otherwise, there might be several
                 input sections for this output section.  FIXME: This
                 code is probably not needed these days anyhow, since
                 the linker now does not create empty output sections.  */
              if (s->output_section != NULL
                  && FUNC9 (name,
                             FUNC4 (s->output_section->owner,
                                                   s->output_section)) == 0)
                s->flags |= SEC_EXCLUDE;
            }
          else
            {
              const char *outname;
              asection *target;

              /* If this relocation section applies to a read only
                 section, then we probably need a DT_TEXTREL entry.
                 If the relocation section is .rel.dyn, we always
                 assert a DT_TEXTREL entry rather than testing whether
                 there exists a relocation to a read only section or
                 not.  */
              outname = FUNC4 (output_bfd, s->output_section);
              target = FUNC3 (output_bfd, outname + 4);
              if ((target != NULL
                   && (target->flags & SEC_READONLY) != 0
                   && (target->flags & SEC_ALLOC) != 0) || FUNC9 (outname, ".rel.dyn") == 0)
                reltext = TRUE;

              /* We use the reloc_count field as a counter if we need
                 to copy relocs into the output file.  */
              if (FUNC9 (name, ".rel.dyn") != 0)
                s->reloc_count = 0;
            }
        }
      else if (FUNC1 (name, ".got"))
        {
	  /* _bfd_score_elf_always_size_sections() has already done
	     most of the work, but some symbols may have been mapped
	     to versions that we must now resolve in the got_entries
	     hash tables.  */
        }
      else if (FUNC9 (name, SCORE_ELF_STUB_SECTION_NAME) == 0)
        {
          /* IRIX rld assumes that the function stub isn't at the end
             of .text section. So put a dummy. XXX  */
          s->size += SCORE_FUNCTION_STUB_SIZE;
        }
      else if (! FUNC1 (name, ".init"))
        {
          /* It's not one of our sections, so don't allocate space.  */
          continue;
        }

      /* Allocate memory for the section contents.  */
      s->contents = FUNC6 (dynobj, s->size);
      if (s->contents == NULL && s->size != 0)
        {
          FUNC5 (bfd_error_no_memory);
          return FALSE;
        }
    }

  if (FUNC7 (info)->dynamic_sections_created)
    {
      /* Add some entries to the .dynamic section.  We fill in the
	 values later, in _bfd_score_elf_finish_dynamic_sections, but we
	 must add the entries now so that we get the correct size for
	 the .dynamic section.  The DT_DEBUG entry is filled in by the
	 dynamic linker and used by the debugger.  */

      if (!FUNC2 (info, DT_DEBUG, 0))
	return FALSE;

      if (reltext)
	info->flags |= DF_TEXTREL;

      if ((info->flags & DF_TEXTREL) != 0)
	{
	  if (!FUNC2 (info, DT_TEXTREL, 0))
	    return FALSE;
	}

      if (! FUNC2 (info, DT_PLTGOT, 0))
	return FALSE;

      if (FUNC8 (dynobj, FALSE))
	{
	  if (!FUNC2 (info, DT_REL, 0))
	    return FALSE;

	  if (!FUNC2 (info, DT_RELSZ, 0))
	    return FALSE;

	  if (!FUNC2 (info, DT_RELENT, 0))
	    return FALSE;
	}

      if (!FUNC2 (info, DT_SCORE_BASE_ADDRESS, 0))
        return FALSE;

      if (!FUNC2 (info, DT_SCORE_LOCAL_GOTNO, 0))
        return FALSE;

      if (!FUNC2 (info, DT_SCORE_SYMTABNO, 0))
        return FALSE;

      if (!FUNC2 (info, DT_SCORE_UNREFEXTNO, 0))
        return FALSE;

      if (!FUNC2 (info, DT_SCORE_GOTSYM, 0))
        return FALSE;

      if (!FUNC2 (info, DT_SCORE_HIPAGENO, 0))
	return FALSE;
    }

  return TRUE;
}