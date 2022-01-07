
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct normalize_state {scalar_t__ prev_class; int previous; void* level; } ;
typedef int cppchar_t ;
typedef int cpp_reader ;
struct TYPE_3__ {int end; int flags; scalar_t__ combine; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int C99 ;
 int CID ;
 int CPP_DL_ICE ;
 scalar_t__ CPP_OPTION (int *,int ) ;
 scalar_t__ CPP_PEDANTIC (int *) ;
 int CTX ;
 int CXX ;
 int DIG ;
 void* MAX (void*,int ) ;
 int NFC ;
 int NKC ;
 int c99 ;
 int cplusplus ;
 int cpp_error (int *,int ,char*,int) ;
 int normalized_C ;
 int normalized_identifier_C ;
 void* normalized_none ;
 TYPE_1__* ucnranges ;

__attribute__((used)) static int
ucn_valid_in_identifier (cpp_reader *pfile, cppchar_t c,
    struct normalize_state *nst)
{
  int mn, mx, md;

  if (c > 0xFFFF)
    return 0;

  mn = 0;
  mx = ARRAY_SIZE (ucnranges) - 1;
  while (mx != mn)
    {
      md = (mn + mx) / 2;
      if (c <= ucnranges[md].end)
 mx = md;
      else
 mn = md + 1;
    }




  if (! (ucnranges[mn].flags & (C99 | CXX)))
      return 0;

  if (CPP_PEDANTIC (pfile)
      && ((CPP_OPTION (pfile, c99) && !(ucnranges[mn].flags & C99))
   || (CPP_OPTION (pfile, cplusplus)
       && !(ucnranges[mn].flags & CXX))))
    return 0;


  if (ucnranges[mn].combine != 0 && ucnranges[mn].combine < nst->prev_class)
    nst->level = normalized_none;
  else if (ucnranges[mn].flags & CTX)
    {
      bool safe;
      cppchar_t p = nst->previous;


      if (c == 0x09BE)
 safe = p != 0x09C7;
      else if (c == 0x0B3E)
 safe = p != 0x0B47;
      else if (c == 0x0BBE)
 safe = p != 0x0BC6 && p != 0x0BC7;
      else if (c == 0x0CC2)
 safe = p != 0x0CC6;
      else if (c == 0x0D3E)
 safe = p != 0x0D46 && p != 0x0D47;







      else if (c >= 0x1161 && c <= 0x1175)
 safe = p < 0x1100 || p > 0x1112;
      else if (c >= 0x11A8 && c <= 0x11C2)
 safe = (p < 0xAC00 || p > 0xD7A3 || (p - 0xAC00) % 28 != 0);
      else
 {

   cpp_error (pfile, CPP_DL_ICE, "Character %x might not be NFKC", c);
   safe = 1;
 }
      if (!safe && c < 0x1161)
 nst->level = normalized_none;
      else if (!safe)
 nst->level = MAX (nst->level, normalized_identifier_C);
    }
  else if (ucnranges[mn].flags & NKC)
    ;
  else if (ucnranges[mn].flags & NFC)
    nst->level = MAX (nst->level, normalized_C);
  else if (ucnranges[mn].flags & CID)
    nst->level = MAX (nst->level, normalized_identifier_C);
  else
    nst->level = normalized_none;
  nst->previous = c;
  nst->prev_class = ucnranges[mn].combine;


  if (CPP_OPTION (pfile, c99) && (ucnranges[mn].flags & DIG))
    return 2;

  return 1;
}
