
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct internal_scnhdr {int s_align; int s_nlnno; int s_nreloc; int s_flags; int s_lnnoptr; int s_relptr; int s_scnptr; int s_size; int s_paddr; int s_vaddr; int s_name; } ;
typedef int bfd ;
struct TYPE_2__ {int s_align; int s_nlnno; int s_nreloc; int s_flags; int s_lnnoptr; int s_relptr; int s_scnptr; int s_size; int s_paddr; int s_vaddr; int s_name; } ;
typedef TYPE_1__ SCNHDR ;


 int COFF_ADJUST_SCNHDR_IN_POST (int *,void*,void*) ;
 int COFF_ADJUST_SCNHDR_IN_PRE (int *,void*,void*) ;
 int GET_SCNHDR_ALIGN (int *,int ) ;
 int GET_SCNHDR_FLAGS (int *,int ) ;
 int GET_SCNHDR_LNNOPTR (int *,int ) ;
 int GET_SCNHDR_NLNNO (int *,int ) ;
 int GET_SCNHDR_NRELOC (int *,int ) ;
 int GET_SCNHDR_PADDR (int *,int ) ;
 int GET_SCNHDR_RELPTR (int *,int ) ;
 int GET_SCNHDR_SCNPTR (int *,int ) ;
 int GET_SCNHDR_SIZE (int *,int ) ;
 int GET_SCNHDR_VADDR (int *,int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void
coff_swap_scnhdr_in (bfd * abfd, void * ext, void * in)
{
  SCNHDR *scnhdr_ext = (SCNHDR *) ext;
  struct internal_scnhdr *scnhdr_int = (struct internal_scnhdr *) in;




  memcpy (scnhdr_int->s_name, scnhdr_ext->s_name, sizeof (scnhdr_int->s_name));

  scnhdr_int->s_vaddr = GET_SCNHDR_VADDR (abfd, scnhdr_ext->s_vaddr);
  scnhdr_int->s_paddr = GET_SCNHDR_PADDR (abfd, scnhdr_ext->s_paddr);
  scnhdr_int->s_size = GET_SCNHDR_SIZE (abfd, scnhdr_ext->s_size);

  scnhdr_int->s_scnptr = GET_SCNHDR_SCNPTR (abfd, scnhdr_ext->s_scnptr);
  scnhdr_int->s_relptr = GET_SCNHDR_RELPTR (abfd, scnhdr_ext->s_relptr);
  scnhdr_int->s_lnnoptr = GET_SCNHDR_LNNOPTR (abfd, scnhdr_ext->s_lnnoptr);
  scnhdr_int->s_flags = GET_SCNHDR_FLAGS (abfd, scnhdr_ext->s_flags);
  scnhdr_int->s_nreloc = GET_SCNHDR_NRELOC (abfd, scnhdr_ext->s_nreloc);
  scnhdr_int->s_nlnno = GET_SCNHDR_NLNNO (abfd, scnhdr_ext->s_nlnno);






}
