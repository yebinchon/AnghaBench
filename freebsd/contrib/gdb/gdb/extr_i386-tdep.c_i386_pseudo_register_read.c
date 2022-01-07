
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;


 int MAX_REGISTER_SIZE ;
 scalar_t__ i386_mmx_regnum_p (struct gdbarch*,int) ;
 int i386_mmx_regnum_to_fp_regnum (struct regcache*,int) ;
 int memcpy (void*,char*,int ) ;
 int regcache_raw_read (struct regcache*,int,void*) ;
 int register_size (struct gdbarch*,int) ;

__attribute__((used)) static void
i386_pseudo_register_read (struct gdbarch *gdbarch, struct regcache *regcache,
      int regnum, void *buf)
{
  if (i386_mmx_regnum_p (gdbarch, regnum))
    {
      char mmx_buf[MAX_REGISTER_SIZE];
      int fpnum = i386_mmx_regnum_to_fp_regnum (regcache, regnum);


      regcache_raw_read (regcache, fpnum, mmx_buf);
      memcpy (buf, mmx_buf, register_size (gdbarch, regnum));
    }
  else
    regcache_raw_read (regcache, regnum, buf);
}
