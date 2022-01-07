
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef int arg_reg_buffer ;
typedef int CORE_ADDR ;


 scalar_t__ ALPHA_A0_REGNUM ;
 scalar_t__ ALPHA_FPA0_REGNUM ;
 int ALPHA_NUM_ARG_REGS ;
 int ALPHA_RA_REGNUM ;
 int ALPHA_REGISTER_SIZE ;
 int ALPHA_SP_REGNUM ;
 int ALPHA_T12_REGNUM ;
 int TYPE_CODE (struct type*) ;







 int TYPE_LENGTH (struct type*) ;
 char* VALUE_CONTENTS (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 scalar_t__ alloca (int) ;
 struct type* builtin_type_ieee_double_little ;
 struct type* builtin_type_int32 ;
 struct type* builtin_type_int64 ;
 struct type* check_typedef (int ) ;
 struct type* lookup_pointer_type (struct type*) ;
 int memcpy (char*,char*,int) ;
 int regcache_cooked_write (struct regcache*,scalar_t__,char*) ;
 int regcache_cooked_write_signed (struct regcache*,int ,int) ;
 int store_unsigned_integer (char*,int,int) ;
 struct value* value_cast (struct type*,struct value*) ;
 struct value* value_from_pointer (struct type*,int) ;
 int write_memory (int,char*,int) ;

__attribute__((used)) static CORE_ADDR
alpha_push_dummy_call (struct gdbarch *gdbarch, CORE_ADDR func_addr,
         struct regcache *regcache, CORE_ADDR bp_addr,
         int nargs, struct value **args, CORE_ADDR sp,
         int struct_return, CORE_ADDR struct_addr)
{
  int i;
  int accumulate_size = struct_return ? 8 : 0;
  struct alpha_arg
    {
      char *contents;
      int len;
      int offset;
    };
  struct alpha_arg *alpha_args
    = (struct alpha_arg *) alloca (nargs * sizeof (struct alpha_arg));
  struct alpha_arg *m_arg;
  char arg_reg_buffer[ALPHA_REGISTER_SIZE * ALPHA_NUM_ARG_REGS];
  int required_arg_regs;


  regcache_cooked_write_signed (regcache, ALPHA_T12_REGNUM, func_addr);



  regcache_cooked_write_signed (regcache, ALPHA_RA_REGNUM, bp_addr);


  for (i = 0, m_arg = alpha_args; i < nargs; i++, m_arg++)
    {
      struct value *arg = args[i];
      struct type *arg_type = check_typedef (VALUE_TYPE (arg));


      switch (TYPE_CODE (arg_type))
 {
 case 129:
 case 134:
 case 133:
 case 128:
 case 131:
   if (TYPE_LENGTH (arg_type) == 4)
     {


       arg_type = builtin_type_int32;
       arg = value_cast (arg_type, arg);
     }
   if (TYPE_LENGTH (arg_type) < ALPHA_REGISTER_SIZE)
     {
       arg_type = builtin_type_int64;
       arg = value_cast (arg_type, arg);
     }
   break;

 case 130:


   if (accumulate_size < sizeof (arg_reg_buffer)
       && TYPE_LENGTH (arg_type) == 4)
     {
       arg_type = builtin_type_ieee_double_little;
       arg = value_cast (arg_type, arg);
     }


   else if (TYPE_LENGTH (arg_type) == 16)
     {

       sp = (sp & -16) - 16;


       write_memory (sp, VALUE_CONTENTS (arg), 16);


       arg_type = lookup_pointer_type (arg_type);
       arg = value_from_pointer (arg_type, sp);
     }
   break;

 case 132:






   if (TYPE_LENGTH (arg_type) == 32)
     {

       sp = (sp & -16) - 16;


       write_memory (sp, VALUE_CONTENTS (arg), 32);


       arg_type = lookup_pointer_type (arg_type);
       arg = value_from_pointer (arg_type, sp);
     }
   break;

 default:
   break;
 }
      m_arg->len = TYPE_LENGTH (arg_type);
      m_arg->offset = accumulate_size;
      accumulate_size = (accumulate_size + m_arg->len + 7) & ~7;
      m_arg->contents = VALUE_CONTENTS (arg);
    }



  required_arg_regs = accumulate_size / 8;
  if (required_arg_regs > ALPHA_NUM_ARG_REGS)
    required_arg_regs = ALPHA_NUM_ARG_REGS;


  if (accumulate_size < sizeof(arg_reg_buffer))
    accumulate_size = 0;
  else
    accumulate_size -= sizeof(arg_reg_buffer);
  sp -= accumulate_size;


  sp &= ~15;


  for (i = nargs; m_arg--, --i >= 0;)
    {
      char *contents = m_arg->contents;
      int offset = m_arg->offset;
      int len = m_arg->len;


      if (offset < sizeof(arg_reg_buffer))
 {
   if (offset + len <= sizeof(arg_reg_buffer))
     {
       memcpy (arg_reg_buffer + offset, contents, len);
       continue;
     }
   else
     {
       int tlen = sizeof(arg_reg_buffer) - offset;
       memcpy (arg_reg_buffer + offset, contents, tlen);
       offset += tlen;
       contents += tlen;
       len -= tlen;
     }
 }


      write_memory (sp + offset - sizeof(arg_reg_buffer), contents, len);
    }
  if (struct_return)
    store_unsigned_integer (arg_reg_buffer, ALPHA_REGISTER_SIZE, struct_addr);


  for (i = 0; i < required_arg_regs; i++)
    {
      regcache_cooked_write (regcache, ALPHA_A0_REGNUM + i,
        arg_reg_buffer + i*ALPHA_REGISTER_SIZE);
      regcache_cooked_write (regcache, ALPHA_FPA0_REGNUM + i,
        arg_reg_buffer + i*ALPHA_REGISTER_SIZE);
    }


  regcache_cooked_write_signed (regcache, ALPHA_SP_REGNUM, sp);

  return sp;
}
