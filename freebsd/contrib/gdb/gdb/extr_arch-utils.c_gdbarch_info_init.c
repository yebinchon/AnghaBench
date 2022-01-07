
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_info {int osabi; int byte_order; } ;


 int BFD_ENDIAN_UNKNOWN ;
 int GDB_OSABI_UNINITIALIZED ;
 int memset (struct gdbarch_info*,int ,int) ;

void
gdbarch_info_init (struct gdbarch_info *info)
{
  memset (info, 0, sizeof (struct gdbarch_info));
  info->byte_order = BFD_ENDIAN_UNKNOWN;
  info->osabi = GDB_OSABI_UNINITIALIZED;
}
