
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
typedef int relax_substateT ;
typedef int offsetT ;


 char* frag_var (int ,int,int,int ,int *,int ,char*) ;
 int memcpy (char*,char const*,int) ;
 int rs_align ;

void
frag_align_pattern (int alignment, const char *fill_pattern,
      int n_fill, int max)
{
  char *p;

  p = frag_var (rs_align, n_fill, n_fill, (relax_substateT) max,
  (symbolS *) 0, (offsetT) alignment, (char *) 0);
  memcpy (p, fill_pattern, n_fill);
}
