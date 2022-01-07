
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int CE_NOTE ;
 int CE_PANIC ;
 char** ce_prefix ;
 char** ce_suffix ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;
 int vpanic (char const*,int ) ;

void
vcmn_err(int ce, const char *fmt, va_list adx)
{
 if (ce == CE_PANIC)
  vpanic(fmt, adx);
 if (ce != CE_NOTE) {
  (void) fprintf(stderr, "%s", ce_prefix[ce]);
  (void) vfprintf(stderr, fmt, adx);
  (void) fprintf(stderr, "%s", ce_suffix[ce]);
 }
}
