
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct internal_filehdr {void* f_target_id; void* f_flags; void* f_opthdr; void* f_nsyms; int f_symptr; void* f_timdat; void* f_nscns; void* f_magic; } ;
typedef int bfd ;
struct TYPE_2__ {int f_target_id; int f_flags; int f_opthdr; int f_nsyms; int f_symptr; int f_timdat; int f_nscns; int f_magic; } ;
typedef TYPE_1__ FILHDR ;


 int COFF_ADJUST_FILEHDR_IN_POST (int *,void*,void*) ;
 int COFF_ADJUST_FILEHDR_IN_PRE (int *,void*,void*) ;
 int GET_FILEHDR_SYMPTR (int *,int ) ;
 void* H_GET_16 (int *,int ) ;
 void* H_GET_32 (int *,int ) ;

__attribute__((used)) static void
coff_swap_filehdr_in (bfd * abfd, void * src, void * dst)
{
  FILHDR *filehdr_src = (FILHDR *) src;
  struct internal_filehdr *filehdr_dst = (struct internal_filehdr *) dst;




  filehdr_dst->f_magic = H_GET_16 (abfd, filehdr_src->f_magic);
  filehdr_dst->f_nscns = H_GET_16 (abfd, filehdr_src->f_nscns);
  filehdr_dst->f_timdat = H_GET_32 (abfd, filehdr_src->f_timdat);
  filehdr_dst->f_symptr = GET_FILEHDR_SYMPTR (abfd, filehdr_src->f_symptr);
  filehdr_dst->f_nsyms = H_GET_32 (abfd, filehdr_src->f_nsyms);
  filehdr_dst->f_opthdr = H_GET_16 (abfd, filehdr_src->f_opthdr);
  filehdr_dst->f_flags = H_GET_16 (abfd, filehdr_src->f_flags);







}
