
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int e_magic; int e_cblp; int e_cp; int e_crlc; int e_cparhdr; int e_minalloc; int e_maxalloc; int e_ss; int e_sp; int e_csum; int e_ip; int e_cs; int e_lfarlc; int e_ovno; int* e_res; int e_oemid; int e_oeminfo; int* e_res2; int e_lfanew; int* dos_message; int nt_signature; } ;
struct internal_filehdr {int f_flags; int f_magic; int f_nscns; int f_nsyms; int f_opthdr; TYPE_1__ pe; int f_symptr; } ;
struct external_PEI_filehdr {int nt_signature; int * dos_message; int e_lfanew; int * e_res2; int e_oeminfo; int e_oemid; int * e_res; int e_ovno; int e_lfarlc; int e_cs; int e_ip; int e_csum; int e_sp; int e_ss; int e_maxalloc; int e_minalloc; int e_cparhdr; int e_crlc; int e_cp; int e_cblp; int e_magic; int f_flags; int f_opthdr; int f_nsyms; int f_symptr; int f_timdat; int f_nscns; int f_magic; } ;
typedef int bfd ;
struct TYPE_4__ {scalar_t__ dll; scalar_t__ has_reloc_section; } ;


 int DOSMAGIC ;
 unsigned int FILHSZ ;
 int F_DLL ;
 int F_RELFLG ;
 int H_PUT_16 (int *,int,int ) ;
 int H_PUT_32 (int *,int,int ) ;
 int NT_SIGNATURE ;
 int PUT_FILEHDR_SYMPTR (int *,int ,int ) ;
 TYPE_2__* pe_data (int *) ;
 int time (int ) ;

unsigned int
_bfd_XXi_only_swap_filehdr_out (bfd * abfd, void * in, void * out)
{
  int idx;
  struct internal_filehdr *filehdr_in = (struct internal_filehdr *) in;
  struct external_PEI_filehdr *filehdr_out = (struct external_PEI_filehdr *) out;

  if (pe_data (abfd)->has_reloc_section)
    filehdr_in->f_flags &= ~F_RELFLG;

  if (pe_data (abfd)->dll)
    filehdr_in->f_flags |= F_DLL;

  filehdr_in->pe.e_magic = DOSMAGIC;
  filehdr_in->pe.e_cblp = 0x90;
  filehdr_in->pe.e_cp = 0x3;
  filehdr_in->pe.e_crlc = 0x0;
  filehdr_in->pe.e_cparhdr = 0x4;
  filehdr_in->pe.e_minalloc = 0x0;
  filehdr_in->pe.e_maxalloc = 0xffff;
  filehdr_in->pe.e_ss = 0x0;
  filehdr_in->pe.e_sp = 0xb8;
  filehdr_in->pe.e_csum = 0x0;
  filehdr_in->pe.e_ip = 0x0;
  filehdr_in->pe.e_cs = 0x0;
  filehdr_in->pe.e_lfarlc = 0x40;
  filehdr_in->pe.e_ovno = 0x0;

  for (idx = 0; idx < 4; idx++)
    filehdr_in->pe.e_res[idx] = 0x0;

  filehdr_in->pe.e_oemid = 0x0;
  filehdr_in->pe.e_oeminfo = 0x0;

  for (idx = 0; idx < 10; idx++)
    filehdr_in->pe.e_res2[idx] = 0x0;

  filehdr_in->pe.e_lfanew = 0x80;



  filehdr_in->pe.dos_message[0] = 0x0eba1f0e;
  filehdr_in->pe.dos_message[1] = 0xcd09b400;
  filehdr_in->pe.dos_message[2] = 0x4c01b821;
  filehdr_in->pe.dos_message[3] = 0x685421cd;
  filehdr_in->pe.dos_message[4] = 0x70207369;
  filehdr_in->pe.dos_message[5] = 0x72676f72;
  filehdr_in->pe.dos_message[6] = 0x63206d61;
  filehdr_in->pe.dos_message[7] = 0x6f6e6e61;
  filehdr_in->pe.dos_message[8] = 0x65622074;
  filehdr_in->pe.dos_message[9] = 0x6e757220;
  filehdr_in->pe.dos_message[10] = 0x206e6920;
  filehdr_in->pe.dos_message[11] = 0x20534f44;
  filehdr_in->pe.dos_message[12] = 0x65646f6d;
  filehdr_in->pe.dos_message[13] = 0x0a0d0d2e;
  filehdr_in->pe.dos_message[14] = 0x24;
  filehdr_in->pe.dos_message[15] = 0x0;
  filehdr_in->pe.nt_signature = NT_SIGNATURE;

  H_PUT_16 (abfd, filehdr_in->f_magic, filehdr_out->f_magic);
  H_PUT_16 (abfd, filehdr_in->f_nscns, filehdr_out->f_nscns);

  H_PUT_32 (abfd, time (0), filehdr_out->f_timdat);
  PUT_FILEHDR_SYMPTR (abfd, filehdr_in->f_symptr,
        filehdr_out->f_symptr);
  H_PUT_32 (abfd, filehdr_in->f_nsyms, filehdr_out->f_nsyms);
  H_PUT_16 (abfd, filehdr_in->f_opthdr, filehdr_out->f_opthdr);
  H_PUT_16 (abfd, filehdr_in->f_flags, filehdr_out->f_flags);




  H_PUT_16 (abfd, filehdr_in->pe.e_magic, filehdr_out->e_magic);
  H_PUT_16 (abfd, filehdr_in->pe.e_cblp, filehdr_out->e_cblp);
  H_PUT_16 (abfd, filehdr_in->pe.e_cp, filehdr_out->e_cp);
  H_PUT_16 (abfd, filehdr_in->pe.e_crlc, filehdr_out->e_crlc);
  H_PUT_16 (abfd, filehdr_in->pe.e_cparhdr, filehdr_out->e_cparhdr);
  H_PUT_16 (abfd, filehdr_in->pe.e_minalloc, filehdr_out->e_minalloc);
  H_PUT_16 (abfd, filehdr_in->pe.e_maxalloc, filehdr_out->e_maxalloc);
  H_PUT_16 (abfd, filehdr_in->pe.e_ss, filehdr_out->e_ss);
  H_PUT_16 (abfd, filehdr_in->pe.e_sp, filehdr_out->e_sp);
  H_PUT_16 (abfd, filehdr_in->pe.e_csum, filehdr_out->e_csum);
  H_PUT_16 (abfd, filehdr_in->pe.e_ip, filehdr_out->e_ip);
  H_PUT_16 (abfd, filehdr_in->pe.e_cs, filehdr_out->e_cs);
  H_PUT_16 (abfd, filehdr_in->pe.e_lfarlc, filehdr_out->e_lfarlc);
  H_PUT_16 (abfd, filehdr_in->pe.e_ovno, filehdr_out->e_ovno);

  for (idx = 0; idx < 4; idx++)
    H_PUT_16 (abfd, filehdr_in->pe.e_res[idx], filehdr_out->e_res[idx]);

  H_PUT_16 (abfd, filehdr_in->pe.e_oemid, filehdr_out->e_oemid);
  H_PUT_16 (abfd, filehdr_in->pe.e_oeminfo, filehdr_out->e_oeminfo);

  for (idx = 0; idx < 10; idx++)
    H_PUT_16 (abfd, filehdr_in->pe.e_res2[idx], filehdr_out->e_res2[idx]);

  H_PUT_32 (abfd, filehdr_in->pe.e_lfanew, filehdr_out->e_lfanew);

  for (idx = 0; idx < 16; idx++)
    H_PUT_32 (abfd, filehdr_in->pe.dos_message[idx],
       filehdr_out->dos_message[idx]);


  H_PUT_32 (abfd, filehdr_in->pe.nt_signature, filehdr_out->nt_signature);

  return FILHSZ;
}
