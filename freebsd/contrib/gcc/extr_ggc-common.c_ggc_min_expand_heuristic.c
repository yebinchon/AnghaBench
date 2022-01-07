
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double MIN (double,int) ;
 double ggc_rlimit_bound (double) ;
 double physmem_total () ;

int
ggc_min_expand_heuristic (void)
{
  double min_expand = physmem_total();


  min_expand = ggc_rlimit_bound (min_expand);




  min_expand /= 1024*1024*1024;
  min_expand *= 70;

  min_expand = MIN (min_expand, 120);
  min_expand += 30;

  return min_expand;
}
