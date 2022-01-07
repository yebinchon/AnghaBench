
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct internal_scnhdr {scalar_t__ s_nlnno; scalar_t__ s_nreloc; int s_align; int s_name; int s_flags; int s_lnnoptr; int s_relptr; int s_scnptr; int s_size; int s_paddr; int s_vaddr; } ;
typedef int bfd ;
struct TYPE_2__ {char* s_name; int s_align; int s_nreloc; int s_nlnno; int s_flags; int s_lnnoptr; int s_relptr; int s_scnptr; int s_size; int s_paddr; int s_vaddr; } ;
typedef TYPE_1__ SCNHDR ;


 int COFF_ADJUST_SCNHDR_OUT_POST (int *,void*,void*) ;
 int COFF_ADJUST_SCNHDR_OUT_PRE (int *,void*,void*) ;
 int H_PUT_32 (int *,scalar_t__,int ) ;
 scalar_t__ MAX_SCNHDR_NLNNO ;
 scalar_t__ MAX_SCNHDR_NRELOC ;
 int PUT_SCNHDR_ALIGN (int *,int ,int ) ;
 int PUT_SCNHDR_FLAGS (int *,int ,int ) ;
 int PUT_SCNHDR_LNNOPTR (int *,int ,int ) ;
 int PUT_SCNHDR_NLNNO (int *,int,int ) ;
 int PUT_SCNHDR_NRELOC (int *,int,int ) ;
 int PUT_SCNHDR_PADDR (int *,int ,int ) ;
 int PUT_SCNHDR_RELPTR (int *,int ,int ) ;
 int PUT_SCNHDR_SCNPTR (int *,int ,int ) ;
 int PUT_SCNHDR_SIZE (int *,int ,int ) ;
 int PUT_SCNHDR_VADDR (int *,int ,int ) ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int ,char*,int) ;
 unsigned int bfd_coff_scnhsz (int *) ;
 int bfd_error_file_truncated ;
 int bfd_get_filename (int *) ;
 int bfd_set_error (int ) ;
 int memcpy (char*,int ,int) ;
 int stub1 (int ,int ,char*,int) ;
 int stub2 (int ,int ,char*,int) ;

__attribute__((used)) static unsigned int
coff_swap_scnhdr_out (bfd * abfd, void * in, void * out)
{
  struct internal_scnhdr *scnhdr_int = (struct internal_scnhdr *) in;
  SCNHDR *scnhdr_ext = (SCNHDR *) out;
  unsigned int ret = bfd_coff_scnhsz (abfd);




  memcpy (scnhdr_ext->s_name, scnhdr_int->s_name, sizeof (scnhdr_int->s_name));

  PUT_SCNHDR_VADDR (abfd, scnhdr_int->s_vaddr, scnhdr_ext->s_vaddr);
  PUT_SCNHDR_PADDR (abfd, scnhdr_int->s_paddr, scnhdr_ext->s_paddr);
  PUT_SCNHDR_SIZE (abfd, scnhdr_int->s_size, scnhdr_ext->s_size);
  PUT_SCNHDR_SCNPTR (abfd, scnhdr_int->s_scnptr, scnhdr_ext->s_scnptr);
  PUT_SCNHDR_RELPTR (abfd, scnhdr_int->s_relptr, scnhdr_ext->s_relptr);
  PUT_SCNHDR_LNNOPTR (abfd, scnhdr_int->s_lnnoptr, scnhdr_ext->s_lnnoptr);
  PUT_SCNHDR_FLAGS (abfd, scnhdr_int->s_flags, scnhdr_ext->s_flags);




  if (scnhdr_int->s_nlnno <= MAX_SCNHDR_NLNNO)
    PUT_SCNHDR_NLNNO (abfd, scnhdr_int->s_nlnno, scnhdr_ext->s_nlnno);
  else
    {
      char buf[sizeof (scnhdr_int->s_name) + 1];

      memcpy (buf, scnhdr_int->s_name, sizeof (scnhdr_int->s_name));
      buf[sizeof (scnhdr_int->s_name)] = '\0';
      (*_bfd_error_handler)
 (_("%s: warning: %s: line number overflow: 0x%lx > 0xffff"),
  bfd_get_filename (abfd),
  buf, scnhdr_int->s_nlnno);
      PUT_SCNHDR_NLNNO (abfd, 0xffff, scnhdr_ext->s_nlnno);
    }

  if (scnhdr_int->s_nreloc <= MAX_SCNHDR_NRELOC)
    PUT_SCNHDR_NRELOC (abfd, scnhdr_int->s_nreloc, scnhdr_ext->s_nreloc);
  else
    {
      char buf[sizeof (scnhdr_int->s_name) + 1];

      memcpy (buf, scnhdr_int->s_name, sizeof (scnhdr_int->s_name));
      buf[sizeof (scnhdr_int->s_name)] = '\0';
      (*_bfd_error_handler) (_("%s: %s: reloc overflow: 0x%lx > 0xffff"),
        bfd_get_filename (abfd),
        buf, scnhdr_int->s_nreloc);
      bfd_set_error (bfd_error_file_truncated);
      PUT_SCNHDR_NRELOC (abfd, 0xffff, scnhdr_ext->s_nreloc);
      ret = 0;
    }
  return ret;
}
