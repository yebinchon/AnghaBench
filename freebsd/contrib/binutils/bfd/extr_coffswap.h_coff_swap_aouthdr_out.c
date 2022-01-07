
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct internal_aouthdr {int magic; int vstamp; int o_snentry; int o_sntext; int o_sndata; int o_sntoc; int o_snloader; int o_snbss; int o_algntext; int o_algndata; int o_modtype; int o_cputype; int fprmask; int gprmask; int gp_value; int bss_start; int * cprmask; int o_maxdata; int o_maxstack; int o_toc; int tagentries; int data_start; int text_start; int entry; int bsize; int dsize; int tsize; } ;
typedef int bfd ;
struct TYPE_2__ {int fprmask; int gprmask; int gp_value; int bss_start; int padding; int bldrev; int * cprmask; int o_resv3; int o_debugger; int o_resv2; int o_maxdata; int o_maxstack; int o_cputype; int o_modtype; int o_algndata; int o_algntext; int o_snbss; int o_snloader; int o_sntoc; int o_sndata; int o_sntext; int o_snentry; int o_toc; int tagentries; int data_start; int text_start; int entry; int bsize; int dsize; int tsize; int vstamp; int magic; } ;
typedef TYPE_1__ AOUTHDR ;


 unsigned int AOUTSZ ;
 int H_PUT_16 (int *,int,int ) ;
 int H_PUT_32 (int *,int ,int ) ;
 int H_PUT_64 (int *,int ,int ) ;
 int PUT_AOUTHDR_BSIZE (int *,int ,int ) ;
 int PUT_AOUTHDR_DATA_START (int *,int ,int ) ;
 int PUT_AOUTHDR_DSIZE (int *,int ,int ) ;
 int PUT_AOUTHDR_ENTRY (int *,int ,int ) ;
 int PUT_AOUTHDR_TEXT_START (int *,int ,int ) ;
 int PUT_AOUTHDR_TSIZE (int *,int ,int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static unsigned int
coff_swap_aouthdr_out (bfd * abfd, void * in, void * out)
{
  struct internal_aouthdr *aouthdr_in = (struct internal_aouthdr *) in;
  AOUTHDR *aouthdr_out = (AOUTHDR *) out;

  H_PUT_16 (abfd, aouthdr_in->magic, aouthdr_out->magic);
  H_PUT_16 (abfd, aouthdr_in->vstamp, aouthdr_out->vstamp);
  PUT_AOUTHDR_TSIZE (abfd, aouthdr_in->tsize, aouthdr_out->tsize);
  PUT_AOUTHDR_DSIZE (abfd, aouthdr_in->dsize, aouthdr_out->dsize);
  PUT_AOUTHDR_BSIZE (abfd, aouthdr_in->bsize, aouthdr_out->bsize);
  PUT_AOUTHDR_ENTRY (abfd, aouthdr_in->entry, aouthdr_out->entry);
  PUT_AOUTHDR_TEXT_START (abfd, aouthdr_in->text_start,
     aouthdr_out->text_start);
  PUT_AOUTHDR_DATA_START (abfd, aouthdr_in->data_start,
     aouthdr_out->data_start);
  return AOUTSZ;
}
