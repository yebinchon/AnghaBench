
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_cur; } ;
typedef int rlim_t ;


 double MAX (double,int) ;
 double MIN (double,int) ;
 int RLIMIT_RSS ;
 scalar_t__ RLIM_INFINITY ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;
 int ggc_min_expand_heuristic () ;
 double ggc_rlimit_bound (double) ;
 scalar_t__ ncpu_available () ;
 double physmem_total () ;

int

ggc_min_heapsize_heuristic (bool optimize)
{
  double phys_kbytes = physmem_total();
  double limit_kbytes = ggc_rlimit_bound (phys_kbytes * 2);

  phys_kbytes /= 1024;
  limit_kbytes /= 1024;



  phys_kbytes /= 8;





  phys_kbytes /= (double)ncpu_available() / (2 - optimize);
  limit_kbytes = MAX (0, limit_kbytes - 16 * 1024);
  limit_kbytes = (limit_kbytes * 100) / (110 + ggc_min_expand_heuristic());
  phys_kbytes = MIN (phys_kbytes, limit_kbytes);

  phys_kbytes = MAX (phys_kbytes, 4 * 1024);
  phys_kbytes = MIN (phys_kbytes, 128 * 1024);

  return phys_kbytes;
}
