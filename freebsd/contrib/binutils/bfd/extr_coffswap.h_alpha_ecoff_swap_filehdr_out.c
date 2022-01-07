
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct internal_filehdr {int f_target_id; int f_flags; int f_opthdr; int f_nsyms; int f_symptr; int f_timdat; int f_nscns; int f_magic; } ;
typedef int bfd ;
struct TYPE_2__ {int f_target_id; int f_flags; int f_opthdr; int f_nsyms; int f_symptr; int f_timdat; int f_nscns; int f_magic; } ;
typedef TYPE_1__ FILHDR ;


 int COFF_ADJUST_FILEHDR_OUT_POST (int *,void*,void*) ;
 int COFF_ADJUST_FILEHDR_OUT_PRE (int *,void*,void*) ;
 int H_PUT_16 (int *,int ,int ) ;
 int H_PUT_32 (int *,int ,int ) ;
 int PUT_FILEHDR_SYMPTR (int *,int ,int ) ;
 unsigned int bfd_coff_filhsz (int *) ;

__attribute__((used)) static unsigned int
coff_swap_filehdr_out (bfd *abfd, void * in, void * out)
{
  struct internal_filehdr *filehdr_in = (struct internal_filehdr *) in;
  FILHDR *filehdr_out = (FILHDR *) out;




  H_PUT_16 (abfd, filehdr_in->f_magic, filehdr_out->f_magic);
  H_PUT_16 (abfd, filehdr_in->f_nscns, filehdr_out->f_nscns);
  H_PUT_32 (abfd, filehdr_in->f_timdat, filehdr_out->f_timdat);
  PUT_FILEHDR_SYMPTR (abfd, filehdr_in->f_symptr, filehdr_out->f_symptr);
  H_PUT_32 (abfd, filehdr_in->f_nsyms, filehdr_out->f_nsyms);
  H_PUT_16 (abfd, filehdr_in->f_opthdr, filehdr_out->f_opthdr);
  H_PUT_16 (abfd, filehdr_in->f_flags, filehdr_out->f_flags);







  return bfd_coff_filhsz (abfd);
}
