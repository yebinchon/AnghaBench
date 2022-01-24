#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_13__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
struct elf32_arm_link_hash_table {scalar_t__ vfp11_fix; } ;
struct bfd_link_info {scalar_t__ relocatable; } ;
struct _arm_elf_section_data {unsigned int mapcount; int erratumcount; TYPE_4__* erratumlist; TYPE_10__* map; } ;
typedef  enum bfd_arm_vfp11_pipe { ____Placeholder_bfd_arm_vfp11_pipe } bfd_arm_vfp11_pipe ;
struct TYPE_24__ {unsigned int vfp_insn; } ;
struct TYPE_25__ {TYPE_1__ b; } ;
struct TYPE_27__ {int vma; struct TYPE_27__* next; int /*<<< orphan*/  type; TYPE_2__ u; } ;
typedef  TYPE_4__ elf32_vfp11_erratum_list ;
typedef  int /*<<< orphan*/  elf32_arm_section_map ;
typedef  int bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_28__ {TYPE_6__* sections; } ;
typedef  TYPE_5__ bfd ;
struct TYPE_29__ {int flags; unsigned int size; int /*<<< orphan*/  name; struct TYPE_29__* next; } ;
typedef  TYPE_6__ asection ;
struct TYPE_26__ {int* contents; } ;
struct TYPE_23__ {TYPE_3__ this_hdr; } ;
struct TYPE_22__ {unsigned int vma; char type; } ;

/* Variables and functions */
 scalar_t__ BFD_ARM_VFP11_FIX_DEFAULT ; 
 scalar_t__ BFD_ARM_VFP11_FIX_NONE ; 
 scalar_t__ BFD_ARM_VFP11_FIX_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int SEC_EXCLUDE ; 
 int SHF_EXECINSTR ; 
 scalar_t__ SHT_PROGBITS ; 
 int /*<<< orphan*/  TRUE ; 
 int VFP11_BAD ; 
 int VFP11_DS ; 
 int /*<<< orphan*/  VFP11_ERRATUM_BRANCH_TO_ARM_VENEER ; 
 int /*<<< orphan*/  VFP11_ERRATUM_VENEER_SECTION_NAME ; 
 int VFP11_FMAC ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int*,int) ; 
 int FUNC3 (unsigned int,unsigned int*,int*,int*) ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_6__*,int**) ; 
 scalar_t__ bfd_target_elf_flavour ; 
 TYPE_4__* FUNC7 (int) ; 
 int /*<<< orphan*/  elf32_arm_compare_mapping ; 
 struct elf32_arm_link_hash_table* FUNC8 (struct bfd_link_info*) ; 
 struct _arm_elf_section_data* FUNC9 (TYPE_6__*) ; 
 TYPE_13__* FUNC10 (TYPE_6__*) ; 
 int FUNC11 (TYPE_6__*) ; 
 scalar_t__ FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (int*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_10__*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct bfd_link_info*,TYPE_4__*,TYPE_5__*,TYPE_6__*,unsigned int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bfd_boolean
FUNC17 (bfd *abfd, struct bfd_link_info *link_info)
{
  asection *sec;
  bfd_byte *contents = NULL;
  int state = 0;
  int regs[3], numregs = 0;
  struct elf32_arm_link_hash_table *globals = FUNC8 (link_info);
  int use_vector = (globals->vfp11_fix == BFD_ARM_VFP11_FIX_VECTOR);
  
  /* We use a simple FSM to match troublesome VFP11 instruction sequences.
     The states transition as follows:
     
       0 -> 1 (vector) or 0 -> 2 (scalar)
           A VFP FMAC-pipeline instruction has been seen. Fill
           regs[0]..regs[numregs-1] with its input operands. Remember this
           instruction in 'first_fmac'.

       1 -> 2
           Any instruction, except for a VFP instruction which overwrites
           regs[*].
       
       1 -> 3 [ -> 0 ]  or
       2 -> 3 [ -> 0 ]
           A VFP instruction has been seen which overwrites any of regs[*].
           We must make a veneer!  Reset state to 0 before examining next
           instruction.
       
       2 -> 0
           If we fail to match anything in state 2, reset to state 0 and reset
           the instruction pointer to the instruction after 'first_fmac'.

     If the VFP11 vector mode is in use, there must be at least two unrelated
     instructions between anti-dependent VFP11 instructions to properly avoid
     triggering the erratum, hence the use of the extra state 1.
  */

  /* If we are only performing a partial link do not bother
     to construct any glue.  */
  if (link_info->relocatable)
    return TRUE;

  /* We should have chosen a fix type by the time we get here.  */
  FUNC0 (globals->vfp11_fix != BFD_ARM_VFP11_FIX_DEFAULT);

  if (globals->vfp11_fix == BFD_ARM_VFP11_FIX_NONE)
    return TRUE;

  /* Skip if this bfd does not correspond to an ELF image.  */
  if (FUNC5 (abfd) != bfd_target_elf_flavour)
    return TRUE;
  
  for (sec = abfd->sections; sec != NULL; sec = sec->next)
    {
      unsigned int i, span, first_fmac = 0, veneer_of_insn = 0;
      struct _arm_elf_section_data *sec_data;

      /* If we don't have executable progbits, we're not interested in this
         section.  Also skip if section is to be excluded.  */
      if (FUNC12 (sec) != SHT_PROGBITS
          || (FUNC11 (sec) & SHF_EXECINSTR) == 0
          || (sec->flags & SEC_EXCLUDE) != 0
          || FUNC16 (sec->name, VFP11_ERRATUM_VENEER_SECTION_NAME) == 0)
        continue;

      sec_data = FUNC9 (sec);
      
      if (sec_data->mapcount == 0)
        continue;
      
      if (FUNC10 (sec)->this_hdr.contents != NULL)
	contents = FUNC10 (sec)->this_hdr.contents;
      else if (! FUNC6 (abfd, sec, &contents))
	goto error_return;

      FUNC14 (sec_data->map, sec_data->mapcount, sizeof (elf32_arm_section_map),
	     elf32_arm_compare_mapping);

      for (span = 0; span < sec_data->mapcount; span++)
        {
          unsigned int span_start = sec_data->map[span].vma;
          unsigned int span_end = (span == sec_data->mapcount - 1)
				  ? sec->size : sec_data->map[span + 1].vma;
          char span_type = sec_data->map[span].type;
          
          /* FIXME: Only ARM mode is supported at present.  We may need to
             support Thumb-2 mode also at some point.  */
          if (span_type != 'a')
            continue;

          for (i = span_start; i < span_end;)
            {
              unsigned int next_i = i + 4;
              unsigned int insn = FUNC4 (abfd)
                ? (contents[i] << 24)
                  | (contents[i + 1] << 16)
                  | (contents[i + 2] << 8)
                  | contents[i + 3]
                : (contents[i + 3] << 24)
                  | (contents[i + 2] << 16)
                  | (contents[i + 1] << 8)
                  | contents[i];
              unsigned int writemask = 0;
              enum bfd_arm_vfp11_pipe pipe;

              switch (state)
                {
                case 0:
                  pipe = FUNC3 (insn, &writemask, regs,
                                                    &numregs);
                  /* I'm assuming the VFP11 erratum can trigger with denorm
                     operands on either the FMAC or the DS pipeline. This might
                     lead to slightly overenthusiastic veneer insertion.  */
                  if (pipe == VFP11_FMAC || pipe == VFP11_DS)
                    {
                      state = use_vector ? 1 : 2;
                      first_fmac = i;
                      veneer_of_insn = insn;
                    }
                  break;

                case 1:
                  {
                    int other_regs[3], other_numregs;
                    pipe = FUNC3 (insn, &writemask,
						      other_regs,
                                                      &other_numregs);
                    if (pipe != VFP11_BAD
                        && FUNC2 (writemask, regs,
							 numregs))
                      state = 3;
                    else
                      state = 2;
                  }
                  break;

                case 2:
                  {
                    int other_regs[3], other_numregs;
                    pipe = FUNC3 (insn, &writemask,
						      other_regs,
                                                      &other_numregs);
                    if (pipe != VFP11_BAD
                        && FUNC2 (writemask, regs,
							 numregs))
                      state = 3;
                    else
                      {
                        state = 0;
                        next_i = first_fmac + 4;
                      }
                  }
                  break;

                case 3:
                  FUNC1 ();  /* Should be unreachable.  */
                }

              if (state == 3)
                {
                  elf32_vfp11_erratum_list *newerr
                    = FUNC7 (sizeof (elf32_vfp11_erratum_list));
                  int errcount;

                  errcount = ++(FUNC9 (sec)->erratumcount);

                  newerr->u.b.vfp_insn = veneer_of_insn;

                  switch (span_type)
                    {
                    case 'a':
                      newerr->type = VFP11_ERRATUM_BRANCH_TO_ARM_VENEER;
                      break;
                    
                    default:
                      FUNC1 ();
                    }

                  FUNC15 (link_info, newerr, abfd, sec,
					       first_fmac);

                  newerr->vma = -1;

                  newerr->next = sec_data->erratumlist;
                  sec_data->erratumlist = newerr;

                  state = 0;
                }

              i = next_i;
            }
        }
      
      if (contents != NULL
          && FUNC10 (sec)->this_hdr.contents != contents)
        FUNC13 (contents);
      contents = NULL;
    }

  return TRUE;

error_return:
  if (contents != NULL
      && FUNC10 (sec)->this_hdr.contents != contents)
    FUNC13 (contents);
  
  return FALSE;
}