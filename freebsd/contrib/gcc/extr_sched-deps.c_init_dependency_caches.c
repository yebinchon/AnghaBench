
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cache_size ;
 int extend_dependency_caches (int,int) ;
 int n_basic_blocks ;

void
init_dependency_caches (int luid)
{






  if (luid / n_basic_blocks > 100 * 5)
    {
      cache_size = 0;
      extend_dependency_caches (luid, 1);
    }
}
