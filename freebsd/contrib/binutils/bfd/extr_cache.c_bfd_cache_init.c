
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_4__ {int * iovec; int * iostream; } ;
typedef TYPE_1__ bfd ;


 int BFD_ASSERT (int ) ;
 scalar_t__ BFD_CACHE_MAX_OPEN ;
 int FALSE ;
 int TRUE ;
 int cache_iovec ;
 int close_one () ;
 int insert (TYPE_1__*) ;
 scalar_t__ open_files ;

bfd_boolean
bfd_cache_init (bfd *abfd)
{
  BFD_ASSERT (abfd->iostream != ((void*)0));
  if (open_files >= BFD_CACHE_MAX_OPEN)
    {
      if (! close_one ())
 return FALSE;
    }
  abfd->iovec = &cache_iovec;
  insert (abfd);
  ++open_files;
  return TRUE;
}
