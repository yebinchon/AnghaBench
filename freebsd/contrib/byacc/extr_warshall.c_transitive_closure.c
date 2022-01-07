
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BITS_PER_WORD ;
 int WORDSIZE (int) ;

__attribute__((used)) static void
transitive_closure(unsigned *R, int n)
{
    int rowsize;
    unsigned i;
    unsigned *rowj;
    unsigned *rp;
    unsigned *rend;
    unsigned *ccol;
    unsigned *relend;
    unsigned *cword;
    unsigned *rowi;

    rowsize = WORDSIZE(n);
    relend = R + n * rowsize;

    cword = R;
    i = 0;
    rowi = R;
    while (rowi < relend)
    {
 ccol = cword;
 rowj = R;

 while (rowj < relend)
 {
     if (*ccol & (unsigned)(1 << i))
     {
  rp = rowi;
  rend = rowj + rowsize;
  while (rowj < rend)
      *rowj++ |= *rp++;
     }
     else
     {
  rowj += rowsize;
     }

     ccol += rowsize;
 }

 if (++i >= BITS_PER_WORD)
 {
     i = 0;
     cword++;
 }

 rowi += rowsize;
    }
}
