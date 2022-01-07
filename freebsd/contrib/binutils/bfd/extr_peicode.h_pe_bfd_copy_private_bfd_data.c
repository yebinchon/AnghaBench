
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {int real_flags; } ;


 int FALSE ;
 int IMAGE_FILE_LARGE_ADDRESS_AWARE ;
 int TRUE ;
 int _bfd_XX_bfd_copy_private_bfd_data_common (int *,int *) ;
 TYPE_1__* pe_data (int *) ;
 int pe_saved_coff_bfd_copy_private_bfd_data (int *,int *) ;

__attribute__((used)) static bfd_boolean
pe_bfd_copy_private_bfd_data (bfd *ibfd, bfd *obfd)
{



  if (pe_data (obfd) != ((void*)0)
      && pe_data (ibfd) != ((void*)0)
      && pe_data (ibfd)->real_flags & IMAGE_FILE_LARGE_ADDRESS_AWARE)
    pe_data (obfd)->real_flags |= IMAGE_FILE_LARGE_ADDRESS_AWARE;

  if (!_bfd_XX_bfd_copy_private_bfd_data_common (ibfd, obfd))
    return FALSE;

  if (pe_saved_coff_bfd_copy_private_bfd_data)
    return pe_saved_coff_bfd_copy_private_bfd_data (ibfd, obfd);

  return TRUE;
}
