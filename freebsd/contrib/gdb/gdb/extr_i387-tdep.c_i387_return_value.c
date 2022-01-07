
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
struct gdbarch_tdep {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef int ULONGEST ;


 int I387_FSTAT_REGNUM ;
 int I387_FTAG_REGNUM ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int regcache_raw_read_unsigned (struct regcache*,int ,int*) ;
 int regcache_raw_write_unsigned (struct regcache*,int ,int) ;

void
i387_return_value (struct gdbarch *gdbarch, struct regcache *regcache)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);
  ULONGEST fstat;
  regcache_raw_read_unsigned (regcache, I387_FSTAT_REGNUM, &fstat);
  fstat |= (7 << 11);
  regcache_raw_write_unsigned (regcache, I387_FSTAT_REGNUM, fstat);




  regcache_raw_write_unsigned (regcache, I387_FTAG_REGNUM, 0x3fff);


}
