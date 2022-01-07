
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfd_cache_close (scalar_t__) ;
 int bfd_get_filename (scalar_t__) ;
 scalar_t__ obfd ;
 int unlink (int ) ;

void
ar_end (void)
{
  if (obfd)
    {
      bfd_cache_close (obfd);
      unlink (bfd_get_filename (obfd));
    }
}
