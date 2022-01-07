
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_info {scalar_t__ byte_order; scalar_t__ osabi; int * bfd_arch_info; int * abfd; } ;
struct gdbarch {int dummy; } ;


 scalar_t__ BFD_ENDIAN_BIG ;
 scalar_t__ BFD_ENDIAN_LITTLE ;
 scalar_t__ BFD_ENDIAN_UNKNOWN ;
 scalar_t__ GDB_OSABI_UNINITIALIZED ;
 scalar_t__ bfd_arch_obscure ;
 scalar_t__ bfd_arch_unknown ;
 scalar_t__ bfd_big_endian (int *) ;
 scalar_t__ bfd_get_arch (int *) ;
 int * bfd_get_arch_info (int *) ;
 scalar_t__ bfd_little_endian (int *) ;
 int gdb_assert (int ) ;
 void* gdbarch_bfd_arch_info (struct gdbarch*) ;
 void* gdbarch_byte_order (struct gdbarch*) ;
 scalar_t__ gdbarch_lookup_osabi (int *) ;
 scalar_t__ gdbarch_osabi (struct gdbarch*) ;
 int target_architecture_auto ;
 int target_byte_order_auto ;

void
gdbarch_info_fill (struct gdbarch *gdbarch, struct gdbarch_info *info)
{

  if (info->bfd_arch_info == ((void*)0)
      && !target_architecture_auto
      && gdbarch != ((void*)0))
    info->bfd_arch_info = gdbarch_bfd_arch_info (gdbarch);
  if (info->bfd_arch_info == ((void*)0)
      && info->abfd != ((void*)0)
      && bfd_get_arch (info->abfd) != bfd_arch_unknown
      && bfd_get_arch (info->abfd) != bfd_arch_obscure)
    info->bfd_arch_info = bfd_get_arch_info (info->abfd);
  if (info->bfd_arch_info == ((void*)0)
      && gdbarch != ((void*)0))
    info->bfd_arch_info = gdbarch_bfd_arch_info (gdbarch);


  if (info->byte_order == BFD_ENDIAN_UNKNOWN
      && !target_byte_order_auto
      && gdbarch != ((void*)0))
    info->byte_order = gdbarch_byte_order (gdbarch);

  if (info->byte_order == BFD_ENDIAN_UNKNOWN
      && info->abfd != ((void*)0))
    info->byte_order = (bfd_big_endian (info->abfd) ? BFD_ENDIAN_BIG
         : bfd_little_endian (info->abfd) ? BFD_ENDIAN_LITTLE
         : BFD_ENDIAN_UNKNOWN);

  if (info->byte_order == BFD_ENDIAN_UNKNOWN
      && gdbarch != ((void*)0))
    info->byte_order = gdbarch_byte_order (gdbarch);


  if (info->osabi == GDB_OSABI_UNINITIALIZED)
    info->osabi = gdbarch_lookup_osabi (info->abfd);
  if (info->osabi == GDB_OSABI_UNINITIALIZED
      && gdbarch != ((void*)0))
    info->osabi = gdbarch_osabi (gdbarch);


  gdb_assert (info->bfd_arch_info != ((void*)0));
}
