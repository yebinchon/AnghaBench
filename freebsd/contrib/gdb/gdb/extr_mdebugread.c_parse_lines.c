
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct partial_symtab {int textlow; } ;
struct linetable {int nitems; } ;
struct TYPE_9__ {unsigned char* line; } ;
struct TYPE_8__ {scalar_t__ cbLine; int cpd; int cbLineOffset; } ;
struct TYPE_7__ {scalar_t__ iline; int lnLow; int lnHigh; int cbLineOffset; int adr; } ;
typedef TYPE_1__ PDR ;
typedef TYPE_2__ FDR ;
typedef int CORE_ADDR ;


 int add_line (struct linetable*,int,int,int) ;
 int complaint (int *,char*,int ) ;
 TYPE_6__* debug_info ;
 int fdr_name (TYPE_2__*) ;
 scalar_t__ ilineNil ;
 int symfile_complaints ;

__attribute__((used)) static void
parse_lines (FDR *fh, PDR *pr, struct linetable *lt, int maxlines,
      struct partial_symtab *pst, CORE_ADDR lowest_pdr_addr)
{
  unsigned char *base;
  int j, k;
  int delta, count, lineno = 0;

  if (fh->cbLine == 0)
    return;


  k = 0;
  for (j = 0; j < fh->cpd; j++, pr++)
    {
      CORE_ADDR l;
      CORE_ADDR adr;
      unsigned char *halt;


      if (pr->iline == ilineNil ||
   pr->lnLow == -1 || pr->lnHigh == -1)
 continue;



      base = debug_info->line + fh->cbLineOffset;
      if (j != (fh->cpd - 1))
 halt = base + pr[1].cbLineOffset;
      else
 halt = base + fh->cbLine;
      base += pr->cbLineOffset;

      adr = pst->textlow + pr->adr - lowest_pdr_addr;

      l = adr >> 2;
      for (lineno = pr->lnLow; base < halt;)
 {
   count = *base & 0x0f;
   delta = *base++ >> 4;
   if (delta >= 8)
     delta -= 16;
   if (delta == -8)
     {
       delta = (base[0] << 8) | base[1];
       if (delta >= 0x8000)
  delta -= 0x10000;
       base += 2;
     }
   lineno += delta;



   if (lt->nitems >= maxlines)
     {
       complaint (&symfile_complaints,
    "guessed size of linetable for %s incorrectly",
    fdr_name (fh));
       break;
     }
   k = add_line (lt, lineno, l, k);
   l += count + 1;
 }
    }
}
