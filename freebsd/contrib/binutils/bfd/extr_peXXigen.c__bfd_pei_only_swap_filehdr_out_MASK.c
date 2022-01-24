#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int e_magic; int e_cblp; int e_cp; int e_crlc; int e_cparhdr; int e_minalloc; int e_maxalloc; int e_ss; int e_sp; int e_csum; int e_ip; int e_cs; int e_lfarlc; int e_ovno; int* e_res; int e_oemid; int e_oeminfo; int* e_res2; int e_lfanew; int* dos_message; int nt_signature; } ;
struct internal_filehdr {int f_flags; int f_magic; int f_nscns; int f_nsyms; int f_opthdr; TYPE_1__ pe; int /*<<< orphan*/  f_symptr; } ;
struct external_PEI_filehdr {int /*<<< orphan*/  nt_signature; int /*<<< orphan*/ * dos_message; int /*<<< orphan*/  e_lfanew; int /*<<< orphan*/ * e_res2; int /*<<< orphan*/  e_oeminfo; int /*<<< orphan*/  e_oemid; int /*<<< orphan*/ * e_res; int /*<<< orphan*/  e_ovno; int /*<<< orphan*/  e_lfarlc; int /*<<< orphan*/  e_cs; int /*<<< orphan*/  e_ip; int /*<<< orphan*/  e_csum; int /*<<< orphan*/  e_sp; int /*<<< orphan*/  e_ss; int /*<<< orphan*/  e_maxalloc; int /*<<< orphan*/  e_minalloc; int /*<<< orphan*/  e_cparhdr; int /*<<< orphan*/  e_crlc; int /*<<< orphan*/  e_cp; int /*<<< orphan*/  e_cblp; int /*<<< orphan*/  e_magic; int /*<<< orphan*/  f_flags; int /*<<< orphan*/  f_opthdr; int /*<<< orphan*/  f_nsyms; int /*<<< orphan*/  f_symptr; int /*<<< orphan*/  f_timdat; int /*<<< orphan*/  f_nscns; int /*<<< orphan*/  f_magic; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_4__ {scalar_t__ dll; scalar_t__ has_reloc_section; } ;

/* Variables and functions */
 int DOSMAGIC ; 
 unsigned int FILHSZ ; 
 int F_DLL ; 
 int F_RELFLG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int NT_SIGNATURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

unsigned int
FUNC5 (bfd * abfd, void * in, void * out)
{
  int idx;
  struct internal_filehdr *filehdr_in = (struct internal_filehdr *) in;
  struct external_PEI_filehdr *filehdr_out = (struct external_PEI_filehdr *) out;

  if (FUNC3 (abfd)->has_reloc_section)
    filehdr_in->f_flags &= ~F_RELFLG;

  if (FUNC3 (abfd)->dll)
    filehdr_in->f_flags |= F_DLL;

  filehdr_in->pe.e_magic    = DOSMAGIC;
  filehdr_in->pe.e_cblp     = 0x90;
  filehdr_in->pe.e_cp       = 0x3;
  filehdr_in->pe.e_crlc     = 0x0;
  filehdr_in->pe.e_cparhdr  = 0x4;
  filehdr_in->pe.e_minalloc = 0x0;
  filehdr_in->pe.e_maxalloc = 0xffff;
  filehdr_in->pe.e_ss       = 0x0;
  filehdr_in->pe.e_sp       = 0xb8;
  filehdr_in->pe.e_csum     = 0x0;
  filehdr_in->pe.e_ip       = 0x0;
  filehdr_in->pe.e_cs       = 0x0;
  filehdr_in->pe.e_lfarlc   = 0x40;
  filehdr_in->pe.e_ovno     = 0x0;

  for (idx = 0; idx < 4; idx++)
    filehdr_in->pe.e_res[idx] = 0x0;

  filehdr_in->pe.e_oemid   = 0x0;
  filehdr_in->pe.e_oeminfo = 0x0;

  for (idx = 0; idx < 10; idx++)
    filehdr_in->pe.e_res2[idx] = 0x0;

  filehdr_in->pe.e_lfanew = 0x80;

  /* This next collection of data are mostly just characters.  It
     appears to be constant within the headers put on NT exes.  */
  filehdr_in->pe.dos_message[0]  = 0x0eba1f0e;
  filehdr_in->pe.dos_message[1]  = 0xcd09b400;
  filehdr_in->pe.dos_message[2]  = 0x4c01b821;
  filehdr_in->pe.dos_message[3]  = 0x685421cd;
  filehdr_in->pe.dos_message[4]  = 0x70207369;
  filehdr_in->pe.dos_message[5]  = 0x72676f72;
  filehdr_in->pe.dos_message[6]  = 0x63206d61;
  filehdr_in->pe.dos_message[7]  = 0x6f6e6e61;
  filehdr_in->pe.dos_message[8]  = 0x65622074;
  filehdr_in->pe.dos_message[9]  = 0x6e757220;
  filehdr_in->pe.dos_message[10] = 0x206e6920;
  filehdr_in->pe.dos_message[11] = 0x20534f44;
  filehdr_in->pe.dos_message[12] = 0x65646f6d;
  filehdr_in->pe.dos_message[13] = 0x0a0d0d2e;
  filehdr_in->pe.dos_message[14] = 0x24;
  filehdr_in->pe.dos_message[15] = 0x0;
  filehdr_in->pe.nt_signature = NT_SIGNATURE;

  FUNC0 (abfd, filehdr_in->f_magic, filehdr_out->f_magic);
  FUNC0 (abfd, filehdr_in->f_nscns, filehdr_out->f_nscns);

  FUNC1 (abfd, FUNC4 (0), filehdr_out->f_timdat);
  FUNC2 (abfd, filehdr_in->f_symptr,
		      filehdr_out->f_symptr);
  FUNC1 (abfd, filehdr_in->f_nsyms, filehdr_out->f_nsyms);
  FUNC0 (abfd, filehdr_in->f_opthdr, filehdr_out->f_opthdr);
  FUNC0 (abfd, filehdr_in->f_flags, filehdr_out->f_flags);

  /* Put in extra dos header stuff.  This data remains essentially
     constant, it just has to be tacked on to the beginning of all exes
     for NT.  */
  FUNC0 (abfd, filehdr_in->pe.e_magic, filehdr_out->e_magic);
  FUNC0 (abfd, filehdr_in->pe.e_cblp, filehdr_out->e_cblp);
  FUNC0 (abfd, filehdr_in->pe.e_cp, filehdr_out->e_cp);
  FUNC0 (abfd, filehdr_in->pe.e_crlc, filehdr_out->e_crlc);
  FUNC0 (abfd, filehdr_in->pe.e_cparhdr, filehdr_out->e_cparhdr);
  FUNC0 (abfd, filehdr_in->pe.e_minalloc, filehdr_out->e_minalloc);
  FUNC0 (abfd, filehdr_in->pe.e_maxalloc, filehdr_out->e_maxalloc);
  FUNC0 (abfd, filehdr_in->pe.e_ss, filehdr_out->e_ss);
  FUNC0 (abfd, filehdr_in->pe.e_sp, filehdr_out->e_sp);
  FUNC0 (abfd, filehdr_in->pe.e_csum, filehdr_out->e_csum);
  FUNC0 (abfd, filehdr_in->pe.e_ip, filehdr_out->e_ip);
  FUNC0 (abfd, filehdr_in->pe.e_cs, filehdr_out->e_cs);
  FUNC0 (abfd, filehdr_in->pe.e_lfarlc, filehdr_out->e_lfarlc);
  FUNC0 (abfd, filehdr_in->pe.e_ovno, filehdr_out->e_ovno);

  for (idx = 0; idx < 4; idx++)
    FUNC0 (abfd, filehdr_in->pe.e_res[idx], filehdr_out->e_res[idx]);

  FUNC0 (abfd, filehdr_in->pe.e_oemid, filehdr_out->e_oemid);
  FUNC0 (abfd, filehdr_in->pe.e_oeminfo, filehdr_out->e_oeminfo);

  for (idx = 0; idx < 10; idx++)
    FUNC0 (abfd, filehdr_in->pe.e_res2[idx], filehdr_out->e_res2[idx]);

  FUNC1 (abfd, filehdr_in->pe.e_lfanew, filehdr_out->e_lfanew);

  for (idx = 0; idx < 16; idx++)
    FUNC1 (abfd, filehdr_in->pe.dos_message[idx],
	      filehdr_out->dos_message[idx]);

  /* Also put in the NT signature.  */
  FUNC1 (abfd, filehdr_in->pe.nt_signature, filehdr_out->nt_signature);

  return FILHSZ;
}