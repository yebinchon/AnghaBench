
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef int CORE_ADDR ;



void
generic_remote_translate_xfer_address (struct gdbarch *gdbarch,
           struct regcache *regcache,
           CORE_ADDR gdb_addr, int gdb_len,
           CORE_ADDR * rem_addr, int *rem_len)
{
  *rem_addr = gdb_addr;
  *rem_len = gdb_len;
}
