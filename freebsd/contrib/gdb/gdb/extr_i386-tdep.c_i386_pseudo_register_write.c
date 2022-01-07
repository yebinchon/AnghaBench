
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;


 int MAX_REGISTER_SIZE ;
 scalar_t__ i386_mmx_regnum_p (struct gdbarch*,int) ;
 int i386_mmx_regnum_to_fp_regnum (struct regcache*,int) ;
 int memcpy (char*,void const*,int ) ;
 int regcache_raw_read (struct regcache*,int,char*) ;
 int regcache_raw_write (struct regcache*,int,void const*) ;
 int register_size (struct gdbarch*,int) ;

__attribute__((used)) static void
i386_pseudo_register_write (struct gdbarch *gdbarch, struct regcache *regcache,
       int regnum, const void *buf)
{
  if (i386_mmx_regnum_p (gdbarch, regnum))
    {
      char mmx_buf[MAX_REGISTER_SIZE];
      int fpnum = i386_mmx_regnum_to_fp_regnum (regcache, regnum);


      regcache_raw_read (regcache, fpnum, mmx_buf);

      memcpy (mmx_buf, buf, register_size (gdbarch, regnum));

      regcache_raw_write (regcache, fpnum, mmx_buf);
    }
  else
    regcache_raw_write (regcache, regnum, buf);
}
