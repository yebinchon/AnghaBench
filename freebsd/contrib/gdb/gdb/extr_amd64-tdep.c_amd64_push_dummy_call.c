
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef int CORE_ADDR ;


 int AMD64_RBP_REGNUM ;
 int AMD64_RDI_REGNUM ;
 int AMD64_RSP_REGNUM ;
 int amd64_push_arguments (struct regcache*,int,struct value**,int,int) ;
 int regcache_cooked_write (struct regcache*,int ,char*) ;
 int store_unsigned_integer (char*,int,int) ;
 int write_memory (int,char*,int) ;

__attribute__((used)) static CORE_ADDR
amd64_push_dummy_call (struct gdbarch *gdbarch, CORE_ADDR func_addr,
         struct regcache *regcache, CORE_ADDR bp_addr,
         int nargs, struct value **args, CORE_ADDR sp,
         int struct_return, CORE_ADDR struct_addr)
{
  char buf[8];


  sp = amd64_push_arguments (regcache, nargs, args, sp, struct_return);


  if (struct_return)
    {
      store_unsigned_integer (buf, 8, struct_addr);
      regcache_cooked_write (regcache, AMD64_RDI_REGNUM, buf);
    }


  sp -= 8;
  store_unsigned_integer (buf, 8, bp_addr);
  write_memory (sp, buf, 8);


  store_unsigned_integer (buf, 8, sp);
  regcache_cooked_write (regcache, AMD64_RSP_REGNUM, buf);


  regcache_cooked_write (regcache, AMD64_RBP_REGNUM, buf);

  return sp + 16;
}
