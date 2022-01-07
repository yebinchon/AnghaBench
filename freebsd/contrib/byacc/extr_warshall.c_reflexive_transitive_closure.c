
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BITS_PER_WORD ;
 int WORDSIZE (int) ;
 int transitive_closure (unsigned int*,int) ;

void
reflexive_transitive_closure(unsigned *R, int n)
{
    int rowsize;
    unsigned i;
    unsigned *rp;
    unsigned *relend;

    transitive_closure(R, n);

    rowsize = WORDSIZE(n);
    relend = R + n * rowsize;

    i = 0;
    rp = R;
    while (rp < relend)
    {
 *rp |= (unsigned)(1 << i);
 if (++i >= BITS_PER_WORD)
 {
     i = 0;
     rp++;
 }

 rp += rowsize;
    }
}
