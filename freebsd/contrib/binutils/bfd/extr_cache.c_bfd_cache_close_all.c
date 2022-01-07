
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 int TRUE ;
 int bfd_cache_close (int *) ;
 int * bfd_last_cache ;

bfd_boolean
bfd_cache_close_all ()
{
  bfd_boolean ret = TRUE;

  while (bfd_last_cache != ((void*)0))
    ret &= bfd_cache_close (bfd_last_cache);

  return ret;
}
