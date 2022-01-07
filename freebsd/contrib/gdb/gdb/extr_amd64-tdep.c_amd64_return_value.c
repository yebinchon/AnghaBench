
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef enum return_value_convention { ____Placeholder_return_value_convention } return_value_convention ;
typedef enum amd64_reg_class { ____Placeholder_amd64_reg_class } amd64_reg_class ;



 int AMD64_MEMORY ;





 int AMD64_ST0_REGNUM ;




 int RETURN_VALUE_REGISTER_CONVENTION ;
 int RETURN_VALUE_STRUCT_CONVENTION ;
 int TYPE_LENGTH (struct type*) ;
 int amd64_classify (struct type*,int*) ;
 int gdb_assert (int) ;
 int i387_return_value (struct gdbarch*,struct regcache*) ;
 int min (int,int) ;
 int regcache_raw_read_part (struct regcache*,int,int,int ,char*) ;
 int regcache_raw_write_part (struct regcache*,int,int,int ,char const*) ;

__attribute__((used)) static enum return_value_convention
amd64_return_value (struct gdbarch *gdbarch, struct type *type,
      struct regcache *regcache,
      void *readbuf, const void *writebuf)
{
  enum amd64_reg_class class[2];
  int len = TYPE_LENGTH (type);
  static int integer_regnum[] = { 135, 134 };
  static int sse_regnum[] = { 129, 128 };
  int integer_reg = 0;
  int sse_reg = 0;
  int i;

  gdb_assert (!(readbuf && writebuf));


  amd64_classify (type, class);





  if (class[0] == AMD64_MEMORY)
    return RETURN_VALUE_STRUCT_CONVENTION;

  gdb_assert (class[1] != AMD64_MEMORY);
  gdb_assert (len <= 16);

  for (i = 0; len > 0; i++, len -= 8)
    {
      int regnum = -1;
      int offset = 0;

      switch (class[i])
 {
 case 137:


   regnum = integer_regnum[integer_reg++];
   break;

 case 133:


   regnum = sse_regnum[sse_reg++];
   break;

 case 132:


   gdb_assert (sse_reg > 0);
   regnum = sse_regnum[sse_reg - 1];
   offset = 8;
   break;

 case 131:


   regnum = AMD64_ST0_REGNUM;
   if (writebuf)
     i387_return_value (gdbarch, regcache);
   break;

 case 130:


   gdb_assert (i > 0 && class[0] == 131);
   regnum = AMD64_ST0_REGNUM;
   offset = 8;
   len = 2;
   break;

 case 136:
   continue;

 default:
   gdb_assert (!"Unexpected register class.");
 }

      gdb_assert (regnum != -1);

      if (readbuf)
 regcache_raw_read_part (regcache, regnum, offset, min (len, 8),
    (char *) readbuf + i * 8);
      if (writebuf)
 regcache_raw_write_part (regcache, regnum, offset, min (len, 8),
     (const char *) writebuf + i * 8);
    }

  return RETURN_VALUE_REGISTER_CONVENTION;
}
