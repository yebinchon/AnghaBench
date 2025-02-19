
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ EFT ;


 scalar_t__ FMTCHECK_DONE ;
 scalar_t__ FMTCHECK_START ;
 scalar_t__ FMTCHECK_UNKNOWN ;
 scalar_t__ get_next_format (char const**,scalar_t__) ;

const char *
fmtcheck(const char *f1, const char *f2)
{
 const char *f1p, *f2p;
 EFT f1t, f2t;

 if (!f1) return f2;

 f1p = f1;
 f1t = FMTCHECK_START;
 f2p = f2;
 f2t = FMTCHECK_START;
 while ((f1t = get_next_format(&f1p, f1t)) != FMTCHECK_DONE) {
  if (f1t == FMTCHECK_UNKNOWN)
   return f2;
  f2t = get_next_format(&f2p, f2t);
  if (f1t != f2t)
   return f2;
 }
 return f1;
}
