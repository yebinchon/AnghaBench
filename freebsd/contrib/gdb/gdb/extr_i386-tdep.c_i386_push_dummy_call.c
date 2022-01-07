
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef int CORE_ADDR ;


 int I386_EBP_REGNUM ;
 int I386_ESP_REGNUM ;
 int TYPE_LENGTH (int ) ;
 char* VALUE_CONTENTS_ALL (struct value*) ;
 int VALUE_ENCLOSING_TYPE (struct value*) ;
 int regcache_cooked_write (struct regcache*,int ,char*) ;
 int store_unsigned_integer (char*,int,int) ;
 int write_memory (int,char*,int) ;

__attribute__((used)) static CORE_ADDR
i386_push_dummy_call (struct gdbarch *gdbarch, CORE_ADDR func_addr,
        struct regcache *regcache, CORE_ADDR bp_addr, int nargs,
        struct value **args, CORE_ADDR sp, int struct_return,
        CORE_ADDR struct_addr)
{
  char buf[4];
  int i;


  for (i = nargs - 1; i >= 0; i--)
    {
      int len = TYPE_LENGTH (VALUE_ENCLOSING_TYPE (args[i]));
      sp -= (len + 3) & ~3;
      write_memory (sp, VALUE_CONTENTS_ALL (args[i]), len);
    }


  if (struct_return)
    {
      sp -= 4;
      store_unsigned_integer (buf, 4, struct_addr);
      write_memory (sp, buf, 4);
    }


  sp -= 4;
  store_unsigned_integer (buf, 4, bp_addr);
  write_memory (sp, buf, 4);


  store_unsigned_integer (buf, 4, sp);
  regcache_cooked_write (regcache, I386_ESP_REGNUM, buf);


  regcache_cooked_write (regcache, I386_EBP_REGNUM, buf);
  return sp + 8;
}
