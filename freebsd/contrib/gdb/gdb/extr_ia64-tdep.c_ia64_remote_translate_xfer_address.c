
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef int CORE_ADDR ;



__attribute__((used)) static void
ia64_remote_translate_xfer_address (struct gdbarch *gdbarch,
        struct regcache *regcache,
        CORE_ADDR memaddr, int nr_bytes,
        CORE_ADDR *targ_addr, int *targ_len)
{
  *targ_addr = memaddr;
  *targ_len = nr_bytes;
}
