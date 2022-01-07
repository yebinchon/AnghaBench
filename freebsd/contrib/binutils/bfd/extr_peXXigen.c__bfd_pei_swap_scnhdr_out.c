
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct internal_scnhdr {int s_vaddr; int s_flags; int s_nlnno; int s_nreloc; int s_name; int s_lnnoptr; int s_relptr; int s_scnptr; scalar_t__ s_size; scalar_t__ s_paddr; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd ;
struct TYPE_10__ {TYPE_2__* link_info; } ;
struct TYPE_6__ {int ImageBase; } ;
struct TYPE_9__ {TYPE_1__ pe_opthdr; } ;
struct TYPE_8__ {int s_flags; int s_nreloc; int s_nlnno; int s_lnnoptr; int s_relptr; int s_scnptr; int s_paddr; int s_size; int s_vaddr; int s_name; } ;
struct TYPE_7__ {int shared; int relocatable; } ;
typedef TYPE_3__ SCNHDR ;


 int H_PUT_16 (int *,int,int ) ;
 int H_PUT_32 (int *,int,int ) ;
 int IMAGE_SCN_ALIGN_8BYTES ;
 int IMAGE_SCN_CNT_CODE ;
 int IMAGE_SCN_CNT_INITIALIZED_DATA ;
 int IMAGE_SCN_CNT_UNINITIALIZED_DATA ;
 int IMAGE_SCN_LNK_NRELOC_OVFL ;
 int IMAGE_SCN_MEM_DISCARDABLE ;
 int IMAGE_SCN_MEM_EXECUTE ;
 int IMAGE_SCN_MEM_READ ;
 int IMAGE_SCN_MEM_WRITE ;
 int PUT_SCNHDR_LNNOPTR (int *,int ,int ) ;
 int PUT_SCNHDR_PADDR (int *,scalar_t__,int ) ;
 int PUT_SCNHDR_RELPTR (int *,int ,int ) ;
 int PUT_SCNHDR_SCNPTR (int *,int ,int ) ;
 int PUT_SCNHDR_SIZE (int *,scalar_t__,int ) ;
 int PUT_SCNHDR_VADDR (int *,int,int ) ;
 unsigned int SCNHSZ ;
 int WP_TEXT ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int ,int) ;
 int bfd_error_file_truncated ;
 int bfd_get_file_flags (int *) ;
 int bfd_get_filename (int *) ;
 scalar_t__ bfd_pe_executable_p (int *) ;
 int bfd_set_error (int ) ;
 TYPE_5__* coff_data (int *) ;
 int memcpy (int ,int ,int) ;
 TYPE_4__* pe_data (int *) ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (int ,int ,int) ;

unsigned int
_bfd_XXi_swap_scnhdr_out (bfd * abfd, void * in, void * out)
{
  struct internal_scnhdr *scnhdr_int = (struct internal_scnhdr *) in;
  SCNHDR *scnhdr_ext = (SCNHDR *) out;
  unsigned int ret = SCNHSZ;
  bfd_vma ps;
  bfd_vma ss;

  memcpy (scnhdr_ext->s_name, scnhdr_int->s_name, sizeof (scnhdr_int->s_name));

  PUT_SCNHDR_VADDR (abfd,
      ((scnhdr_int->s_vaddr
        - pe_data (abfd)->pe_opthdr.ImageBase)
       & 0xffffffff),
      scnhdr_ext->s_vaddr);




  if ((scnhdr_int->s_flags & IMAGE_SCN_CNT_UNINITIALIZED_DATA) != 0)
    {
      if (bfd_pe_executable_p (abfd))
 {
   ps = scnhdr_int->s_size;
   ss = 0;
 }
      else
       {
         ps = 0;
         ss = scnhdr_int->s_size;
       }
    }
  else
    {
      if (bfd_pe_executable_p (abfd))
 ps = scnhdr_int->s_paddr;
      else
 ps = 0;

      ss = scnhdr_int->s_size;
    }

  PUT_SCNHDR_SIZE (abfd, ss,
     scnhdr_ext->s_size);


  PUT_SCNHDR_PADDR (abfd, ps, scnhdr_ext->s_paddr);

  PUT_SCNHDR_SCNPTR (abfd, scnhdr_int->s_scnptr,
       scnhdr_ext->s_scnptr);
  PUT_SCNHDR_RELPTR (abfd, scnhdr_int->s_relptr,
       scnhdr_ext->s_relptr);
  PUT_SCNHDR_LNNOPTR (abfd, scnhdr_int->s_lnnoptr,
        scnhdr_ext->s_lnnoptr);

  {
    typedef struct
    {
      const char * section_name;
      unsigned long must_have;
    }
    pe_required_section_flags;

    pe_required_section_flags known_sections [] =
      {
 { ".arch", IMAGE_SCN_MEM_READ | IMAGE_SCN_CNT_INITIALIZED_DATA | IMAGE_SCN_MEM_DISCARDABLE | IMAGE_SCN_ALIGN_8BYTES },
 { ".bss", IMAGE_SCN_MEM_READ | IMAGE_SCN_CNT_UNINITIALIZED_DATA | IMAGE_SCN_MEM_WRITE },
 { ".data", IMAGE_SCN_MEM_READ | IMAGE_SCN_CNT_INITIALIZED_DATA | IMAGE_SCN_MEM_WRITE },
 { ".edata", IMAGE_SCN_MEM_READ | IMAGE_SCN_CNT_INITIALIZED_DATA },
 { ".idata", IMAGE_SCN_MEM_READ | IMAGE_SCN_CNT_INITIALIZED_DATA | IMAGE_SCN_MEM_WRITE },
 { ".pdata", IMAGE_SCN_MEM_READ | IMAGE_SCN_CNT_INITIALIZED_DATA },
 { ".rdata", IMAGE_SCN_MEM_READ | IMAGE_SCN_CNT_INITIALIZED_DATA },
 { ".reloc", IMAGE_SCN_MEM_READ | IMAGE_SCN_CNT_INITIALIZED_DATA | IMAGE_SCN_MEM_DISCARDABLE },
 { ".rsrc", IMAGE_SCN_MEM_READ | IMAGE_SCN_CNT_INITIALIZED_DATA | IMAGE_SCN_MEM_WRITE },
 { ".text" , IMAGE_SCN_MEM_READ | IMAGE_SCN_CNT_CODE | IMAGE_SCN_MEM_EXECUTE },
 { ".tls", IMAGE_SCN_MEM_READ | IMAGE_SCN_CNT_INITIALIZED_DATA | IMAGE_SCN_MEM_WRITE },
 { ".xdata", IMAGE_SCN_MEM_READ | IMAGE_SCN_CNT_INITIALIZED_DATA },
 { ((void*)0), 0}
      };

    pe_required_section_flags * p;
    for (p = known_sections; p->section_name; p++)
      if (strcmp (scnhdr_int->s_name, p->section_name) == 0)
 {
   if (strcmp (scnhdr_int->s_name, ".text")
       || (bfd_get_file_flags (abfd) & WP_TEXT))
     scnhdr_int->s_flags &= ~IMAGE_SCN_MEM_WRITE;
   scnhdr_int->s_flags |= p->must_have;
   break;
 }

    H_PUT_32 (abfd, scnhdr_int->s_flags, scnhdr_ext->s_flags);
  }

  if (coff_data (abfd)->link_info
      && ! coff_data (abfd)->link_info->relocatable
      && ! coff_data (abfd)->link_info->shared
      && strcmp (scnhdr_int->s_name, ".text") == 0)
    {
      H_PUT_16 (abfd, (scnhdr_int->s_nlnno & 0xffff), scnhdr_ext->s_nlnno);
      H_PUT_16 (abfd, (scnhdr_int->s_nlnno >> 16), scnhdr_ext->s_nreloc);
    }
  else
    {
      if (scnhdr_int->s_nlnno <= 0xffff)
 H_PUT_16 (abfd, scnhdr_int->s_nlnno, scnhdr_ext->s_nlnno);
      else
 {
   (*_bfd_error_handler) (_("%s: line number overflow: 0x%lx > 0xffff"),
     bfd_get_filename (abfd),
     scnhdr_int->s_nlnno);
   bfd_set_error (bfd_error_file_truncated);
   H_PUT_16 (abfd, 0xffff, scnhdr_ext->s_nlnno);
   ret = 0;
 }





      if (scnhdr_int->s_nreloc < 0xffff)
 H_PUT_16 (abfd, scnhdr_int->s_nreloc, scnhdr_ext->s_nreloc);
      else
 {

   H_PUT_16 (abfd, 0xffff, scnhdr_ext->s_nreloc);
   scnhdr_int->s_flags |= IMAGE_SCN_LNK_NRELOC_OVFL;
   H_PUT_32 (abfd, scnhdr_int->s_flags, scnhdr_ext->s_flags);
 }
    }
  return ret;
}
