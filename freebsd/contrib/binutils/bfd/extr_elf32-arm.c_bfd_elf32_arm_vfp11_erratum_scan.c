
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_13__ ;
typedef struct TYPE_22__ TYPE_10__ ;


struct elf32_arm_link_hash_table {scalar_t__ vfp11_fix; } ;
struct bfd_link_info {scalar_t__ relocatable; } ;
struct _arm_elf_section_data {unsigned int mapcount; int erratumcount; TYPE_4__* erratumlist; TYPE_10__* map; } ;
typedef enum bfd_arm_vfp11_pipe { ____Placeholder_bfd_arm_vfp11_pipe } bfd_arm_vfp11_pipe ;
struct TYPE_24__ {unsigned int vfp_insn; } ;
struct TYPE_25__ {TYPE_1__ b; } ;
struct TYPE_27__ {int vma; struct TYPE_27__* next; int type; TYPE_2__ u; } ;
typedef TYPE_4__ elf32_vfp11_erratum_list ;
typedef int elf32_arm_section_map ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
struct TYPE_28__ {TYPE_6__* sections; } ;
typedef TYPE_5__ bfd ;
struct TYPE_29__ {int flags; unsigned int size; int name; struct TYPE_29__* next; } ;
typedef TYPE_6__ asection ;
struct TYPE_26__ {int* contents; } ;
struct TYPE_23__ {TYPE_3__ this_hdr; } ;
struct TYPE_22__ {unsigned int vma; char type; } ;


 scalar_t__ BFD_ARM_VFP11_FIX_DEFAULT ;
 scalar_t__ BFD_ARM_VFP11_FIX_NONE ;
 scalar_t__ BFD_ARM_VFP11_FIX_VECTOR ;
 int BFD_ASSERT (int) ;
 int FALSE ;
 int SEC_EXCLUDE ;
 int SHF_EXECINSTR ;
 scalar_t__ SHT_PROGBITS ;
 int TRUE ;
 int VFP11_BAD ;
 int VFP11_DS ;
 int VFP11_ERRATUM_BRANCH_TO_ARM_VENEER ;
 int VFP11_ERRATUM_VENEER_SECTION_NAME ;
 int VFP11_FMAC ;
 int abort () ;
 int bfd_arm_vfp11_antidependency (unsigned int,int*,int) ;
 int bfd_arm_vfp11_insn_decode (unsigned int,unsigned int*,int*,int*) ;
 scalar_t__ bfd_big_endian (TYPE_5__*) ;
 scalar_t__ bfd_get_flavour (TYPE_5__*) ;
 int bfd_malloc_and_get_section (TYPE_5__*,TYPE_6__*,int**) ;
 scalar_t__ bfd_target_elf_flavour ;
 TYPE_4__* bfd_zmalloc (int) ;
 int elf32_arm_compare_mapping ;
 struct elf32_arm_link_hash_table* elf32_arm_hash_table (struct bfd_link_info*) ;
 struct _arm_elf_section_data* elf32_arm_section_data (TYPE_6__*) ;
 TYPE_13__* elf_section_data (TYPE_6__*) ;
 int elf_section_flags (TYPE_6__*) ;
 scalar_t__ elf_section_type (TYPE_6__*) ;
 int free (int*) ;
 int qsort (TYPE_10__*,unsigned int,int,int ) ;
 int record_vfp11_erratum_veneer (struct bfd_link_info*,TYPE_4__*,TYPE_5__*,TYPE_6__*,unsigned int) ;
 scalar_t__ strcmp (int ,int ) ;

bfd_boolean
bfd_elf32_arm_vfp11_erratum_scan (bfd *abfd, struct bfd_link_info *link_info)
{
  asection *sec;
  bfd_byte *contents = ((void*)0);
  int state = 0;
  int regs[3], numregs = 0;
  struct elf32_arm_link_hash_table *globals = elf32_arm_hash_table (link_info);
  int use_vector = (globals->vfp11_fix == BFD_ARM_VFP11_FIX_VECTOR);
  if (link_info->relocatable)
    return TRUE;


  BFD_ASSERT (globals->vfp11_fix != BFD_ARM_VFP11_FIX_DEFAULT);

  if (globals->vfp11_fix == BFD_ARM_VFP11_FIX_NONE)
    return TRUE;


  if (bfd_get_flavour (abfd) != bfd_target_elf_flavour)
    return TRUE;

  for (sec = abfd->sections; sec != ((void*)0); sec = sec->next)
    {
      unsigned int i, span, first_fmac = 0, veneer_of_insn = 0;
      struct _arm_elf_section_data *sec_data;



      if (elf_section_type (sec) != SHT_PROGBITS
          || (elf_section_flags (sec) & SHF_EXECINSTR) == 0
          || (sec->flags & SEC_EXCLUDE) != 0
          || strcmp (sec->name, VFP11_ERRATUM_VENEER_SECTION_NAME) == 0)
        continue;

      sec_data = elf32_arm_section_data (sec);

      if (sec_data->mapcount == 0)
        continue;

      if (elf_section_data (sec)->this_hdr.contents != ((void*)0))
 contents = elf_section_data (sec)->this_hdr.contents;
      else if (! bfd_malloc_and_get_section (abfd, sec, &contents))
 goto error_return;

      qsort (sec_data->map, sec_data->mapcount, sizeof (elf32_arm_section_map),
      elf32_arm_compare_mapping);

      for (span = 0; span < sec_data->mapcount; span++)
        {
          unsigned int span_start = sec_data->map[span].vma;
          unsigned int span_end = (span == sec_data->mapcount - 1)
      ? sec->size : sec_data->map[span + 1].vma;
          char span_type = sec_data->map[span].type;



          if (span_type != 'a')
            continue;

          for (i = span_start; i < span_end;)
            {
              unsigned int next_i = i + 4;
              unsigned int insn = bfd_big_endian (abfd)
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
                  pipe = bfd_arm_vfp11_insn_decode (insn, &writemask, regs,
                                                    &numregs);



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
                    pipe = bfd_arm_vfp11_insn_decode (insn, &writemask,
            other_regs,
                                                      &other_numregs);
                    if (pipe != VFP11_BAD
                        && bfd_arm_vfp11_antidependency (writemask, regs,
        numregs))
                      state = 3;
                    else
                      state = 2;
                  }
                  break;

                case 2:
                  {
                    int other_regs[3], other_numregs;
                    pipe = bfd_arm_vfp11_insn_decode (insn, &writemask,
            other_regs,
                                                      &other_numregs);
                    if (pipe != VFP11_BAD
                        && bfd_arm_vfp11_antidependency (writemask, regs,
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
                  abort ();
                }

              if (state == 3)
                {
                  elf32_vfp11_erratum_list *newerr
                    = bfd_zmalloc (sizeof (elf32_vfp11_erratum_list));
                  int errcount;

                  errcount = ++(elf32_arm_section_data (sec)->erratumcount);

                  newerr->u.b.vfp_insn = veneer_of_insn;

                  switch (span_type)
                    {
                    case 'a':
                      newerr->type = VFP11_ERRATUM_BRANCH_TO_ARM_VENEER;
                      break;

                    default:
                      abort ();
                    }

                  record_vfp11_erratum_veneer (link_info, newerr, abfd, sec,
            first_fmac);

                  newerr->vma = -1;

                  newerr->next = sec_data->erratumlist;
                  sec_data->erratumlist = newerr;

                  state = 0;
                }

              i = next_i;
            }
        }

      if (contents != ((void*)0)
          && elf_section_data (sec)->this_hdr.contents != contents)
        free (contents);
      contents = ((void*)0);
    }

  return TRUE;

error_return:
  if (contents != ((void*)0)
      && elf_section_data (sec)->this_hdr.contents != contents)
    free (contents);

  return FALSE;
}
