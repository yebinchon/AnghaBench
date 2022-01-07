
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ulong_t ;
typedef int uint64_t ;
struct TYPE_5__ {char* dts_object; char* dts_name; } ;
typedef TYPE_1__ dtrace_syminfo_t ;
struct TYPE_6__ {int pa_dtp; scalar_t__ pa_addr; int * pa_ctfp; int * pa_file; } ;
typedef TYPE_2__ dt_printarg_t ;
typedef scalar_t__ ctf_id_t ;
typedef int ctf_file_t ;
typedef scalar_t__ caddr_t ;
typedef int GElf_Sym ;
typedef int FILE ;


 scalar_t__ CTF_ERR ;
 scalar_t__ CTF_K_FUNCTION ;
 int NBBY ;
 scalar_t__ ctf_type_kind (int *,scalar_t__) ;
 scalar_t__ ctf_type_reference (int *,scalar_t__) ;
 size_t ctf_type_size (int *,scalar_t__) ;
 int dt_print_hex (int *,scalar_t__,size_t) ;
 scalar_t__ dtrace_lookup_by_addr (int ,int ,int *,TYPE_1__*) ;
 int fprintf (int *,char*,char*,char*) ;

__attribute__((used)) static void
dt_print_ptr(ctf_id_t base, ulong_t off, dt_printarg_t *pap)
{
 FILE *fp = pap->pa_file;
 ctf_file_t *ctfp = pap->pa_ctfp;
 caddr_t addr = pap->pa_addr + off / NBBY;
 size_t size = ctf_type_size(ctfp, base);
 ctf_id_t bid = ctf_type_reference(ctfp, base);
 uint64_t pc;
 dtrace_syminfo_t dts;
 GElf_Sym sym;

 if (bid == CTF_ERR || ctf_type_kind(ctfp, bid) != CTF_K_FUNCTION) {
  dt_print_hex(fp, addr, size);
 } else {

  pc = *((uint64_t *)addr);
  if (dtrace_lookup_by_addr(pap->pa_dtp, pc, &sym, &dts) != 0) {
   dt_print_hex(fp, addr, size);
  } else {
   (void) fprintf(fp, "%s`%s", dts.dts_object,
       dts.dts_name);
  }
 }
}
