
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ulong_t ;
struct TYPE_5__ {scalar_t__ pa_addr; int * pa_ctfp; int * pa_file; } ;
typedef TYPE_1__ dt_printarg_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
struct TYPE_6__ {scalar_t__ cte_format; int cte_bits; } ;
typedef TYPE_2__ ctf_encoding_t ;
typedef scalar_t__ caddr_t ;
typedef int FILE ;


 scalar_t__ CTF_FP_DOUBLE ;
 scalar_t__ CTF_FP_LDOUBLE ;
 scalar_t__ CTF_FP_SINGLE ;
 int NBBY ;
 scalar_t__ ctf_type_encoding (int *,int ,TYPE_2__*) ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
dt_print_float(ctf_id_t base, ulong_t off, dt_printarg_t *pap)
{
 FILE *fp = pap->pa_file;
 ctf_file_t *ctfp = pap->pa_ctfp;
 ctf_encoding_t e;
 caddr_t addr = pap->pa_addr + off / NBBY;

 if (ctf_type_encoding(ctfp, base, &e) == 0) {
  if (e.cte_format == CTF_FP_SINGLE &&
      e.cte_bits == sizeof (float) * NBBY) {

   (void) fprintf(fp, "%+.7e", *((float *)addr));
  } else if (e.cte_format == CTF_FP_DOUBLE &&
      e.cte_bits == sizeof (double) * NBBY) {

   (void) fprintf(fp, "%+.7e", *((double *)addr));
  } else if (e.cte_format == CTF_FP_LDOUBLE &&
      e.cte_bits == sizeof (long double) * NBBY) {

   (void) fprintf(fp, "%+.16LE", *((long double *)addr));
  } else {
   (void) fprintf(fp, "<unknown encoding>");
  }
 }
}
