
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct stack_item {scalar_t__ len; int data; } ;
struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef enum type_code { ____Placeholder_type_code } type_code ;
typedef int CORE_ADDR ;


 int ARM_A1_REGNUM ;
 int ARM_LAST_ARG_REGNUM ;
 int ARM_LR_REGNUM ;
 int ARM_SP_REGNUM ;
 int DEPRECATED_REGISTER_SIZE ;
 int MAKE_THUMB_ADDR (int) ;
 int REGISTER_NAME (int) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_FUNC ;
 int TYPE_CODE_PTR ;
 int TYPE_LENGTH (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 char* VALUE_CONTENTS (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 char* alloca (int) ;
 scalar_t__ arm_debug ;
 scalar_t__ arm_pc_is_thumb (int) ;
 struct type* check_typedef (int ) ;
 int extract_unsigned_integer (char*,int) ;
 int fprintf_unfiltered (int ,char*,int,int,...) ;
 int gdb_stdlog ;
 int paddr (int) ;
 int phex (int,int) ;
 struct stack_item* pop_stack_item (struct stack_item*) ;
 struct stack_item* push_stack_item (struct stack_item*,char*,int) ;
 int regcache_cooked_write_unsigned (struct regcache*,int,int) ;
 int store_unsigned_integer (char*,int,int ) ;
 int write_memory (int,int ,scalar_t__) ;

__attribute__((used)) static CORE_ADDR
arm_push_dummy_call (struct gdbarch *gdbarch, CORE_ADDR func_addr,
       struct regcache *regcache, CORE_ADDR bp_addr, int nargs,
       struct value **args, CORE_ADDR sp, int struct_return,
       CORE_ADDR struct_addr)
{
  int argnum;
  int argreg;
  int nstack;
  struct stack_item *si = ((void*)0);




  regcache_cooked_write_unsigned (regcache, ARM_LR_REGNUM, bp_addr);




  nstack = 0;

  argreg = ARM_A1_REGNUM;
  nstack = 0;




  sp &= ~(CORE_ADDR)(2 * DEPRECATED_REGISTER_SIZE - 1);



  if (struct_return)
    {
      if (arm_debug)
 fprintf_unfiltered (gdb_stdlog, "struct return in %s = 0x%s\n",
       REGISTER_NAME (argreg), paddr (struct_addr));
      regcache_cooked_write_unsigned (regcache, argreg, struct_addr);
      argreg++;
    }

  for (argnum = 0; argnum < nargs; argnum++)
    {
      int len;
      struct type *arg_type;
      struct type *target_type;
      enum type_code typecode;
      char *val;

      arg_type = check_typedef (VALUE_TYPE (args[argnum]));
      len = TYPE_LENGTH (arg_type);
      target_type = TYPE_TARGET_TYPE (arg_type);
      typecode = TYPE_CODE (arg_type);
      val = VALUE_CONTENTS (args[argnum]);




      if (TYPE_CODE_PTR == typecode
   && target_type != ((void*)0)
   && TYPE_CODE_FUNC == TYPE_CODE (target_type))
 {
   CORE_ADDR regval = extract_unsigned_integer (val, len);
   if (arm_pc_is_thumb (regval))
     {
       val = alloca (len);
       store_unsigned_integer (val, len, MAKE_THUMB_ADDR (regval));
     }
 }




      while (len > 0)
 {
   int partial_len = len < DEPRECATED_REGISTER_SIZE ? len : DEPRECATED_REGISTER_SIZE;

   if (argreg <= ARM_LAST_ARG_REGNUM)
     {


       CORE_ADDR regval = extract_unsigned_integer (val, partial_len);
       if (arm_debug)
  fprintf_unfiltered (gdb_stdlog, "arg %d in %s = 0x%s\n",
        argnum, REGISTER_NAME (argreg),
        phex (regval, DEPRECATED_REGISTER_SIZE));
       regcache_cooked_write_unsigned (regcache, argreg, regval);
       argreg++;
     }
   else
     {

       if (arm_debug)
  fprintf_unfiltered (gdb_stdlog, "arg %d @ sp + %d\n",
        argnum, nstack);
       si = push_stack_item (si, val, DEPRECATED_REGISTER_SIZE);
       nstack += DEPRECATED_REGISTER_SIZE;
     }

   len -= partial_len;
   val += partial_len;
 }
    }


  if (nstack & 4)
    sp -= 4;

  while (si)
    {
      sp -= si->len;
      write_memory (sp, si->data, si->len);
      si = pop_stack_item (si);
    }


  regcache_cooked_write_unsigned (regcache, ARM_SP_REGNUM, sp);

  return sp;
}
