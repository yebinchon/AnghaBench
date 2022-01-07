
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct internal_aouthdr {void* fprmask; void* gprmask; void* gp_value; void* bss_start; void** cprmask; void* o_maxdata; void* o_maxstack; void* o_cputype; void* o_modtype; void* o_algndata; void* o_algntext; void* o_snbss; void* o_snloader; void* o_sntoc; void* o_sndata; void* o_sntext; void* o_snentry; void* o_toc; int * vid; int o_sri; int o_inlib; void* tagentries; int data_start; int text_start; int entry; int bsize; int dsize; int tsize; void* vstamp; void* magic; } ;
typedef int bfd ;
struct TYPE_2__ {int fprmask; int gprmask; int gp_value; int bss_start; int * cprmask; int o_maxdata; int o_maxstack; int o_cputype; int o_modtype; int o_algndata; int o_algntext; int o_snbss; int o_snloader; int o_sntoc; int o_sndata; int o_sntext; int o_snentry; int o_toc; scalar_t__ vid; scalar_t__ o_sri; scalar_t__ o_inlib; int tagentries; int data_start; int text_start; int entry; int bsize; int dsize; int tsize; int vstamp; int magic; } ;
typedef TYPE_1__ AOUTHDR ;


 int GET_AOUTHDR_BSIZE (int *,int ) ;
 int GET_AOUTHDR_DATA_START (int *,int ) ;
 int GET_AOUTHDR_DSIZE (int *,int ) ;
 int GET_AOUTHDR_ENTRY (int *,int ) ;
 int GET_AOUTHDR_TEXT_START (int *,int ) ;
 int GET_AOUTHDR_TSIZE (int *,int ) ;
 void* H_GET_16 (int *,int ) ;
 void* H_GET_32 (int *,int ) ;
 void* H_GET_64 (int *,int ) ;
 int H_PUT_32 (int *,int ,scalar_t__) ;

__attribute__((used)) static void
coff_swap_aouthdr_in (bfd * abfd, void * aouthdr_ext1, void * aouthdr_int1)
{
  AOUTHDR *aouthdr_ext;
  struct internal_aouthdr *aouthdr_int;

  aouthdr_ext = (AOUTHDR *) aouthdr_ext1;
  aouthdr_int = (struct internal_aouthdr *) aouthdr_int1;
  aouthdr_int->magic = H_GET_16 (abfd, aouthdr_ext->magic);
  aouthdr_int->vstamp = H_GET_16 (abfd, aouthdr_ext->vstamp);
  aouthdr_int->tsize = GET_AOUTHDR_TSIZE (abfd, aouthdr_ext->tsize);
  aouthdr_int->dsize = GET_AOUTHDR_DSIZE (abfd, aouthdr_ext->dsize);
  aouthdr_int->bsize = GET_AOUTHDR_BSIZE (abfd, aouthdr_ext->bsize);
  aouthdr_int->entry = GET_AOUTHDR_ENTRY (abfd, aouthdr_ext->entry);
  aouthdr_int->text_start =
    GET_AOUTHDR_TEXT_START (abfd, aouthdr_ext->text_start);
  aouthdr_int->data_start =
    GET_AOUTHDR_DATA_START (abfd, aouthdr_ext->data_start);
}
