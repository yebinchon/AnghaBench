
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch_tdep {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef enum type_code { ____Placeholder_type_code } type_code ;
typedef int LONGEST ;
typedef int CORE_ADDR ;


 int A0_REGNUM ;
 scalar_t__ BFD_ENDIAN_BIG ;
 scalar_t__ FP_REGISTER_DOUBLE ;
 int MIPS_LAST_ARG_REGNUM ;
 int MIPS_LAST_FP_ARG_REGNUM ;
 int RA_REGNUM ;
 int SP_REGNUM ;
 int T9_REGNUM ;
 scalar_t__ TARGET_BYTE_ORDER ;
 int TARGET_CHAR_BIT ;
 int TYPE_CODE (struct type*) ;
 int TYPE_CODE_FLT ;
 int TYPE_CODE_INT ;
 int TYPE_CODE_PTR ;
 int TYPE_CODE_STRUCT ;
 int TYPE_CODE_UNION ;
 int TYPE_LENGTH (struct type*) ;
 scalar_t__ VALUE_CONTENTS (struct value*) ;
 struct type* VALUE_TYPE (struct value*) ;
 int align_down (int,int) ;
 int align_up (int,int) ;
 struct type* check_typedef (struct type*) ;
 int current_gdbarch ;
 int extract_signed_integer (char*,int) ;
 void* extract_unsigned_integer (char*,int) ;
 scalar_t__ fp_register_arg_p (int,struct type*) ;
 int fprintf_filtered (int ,char*,int,int ) ;
 int fprintf_unfiltered (int ,char*,...) ;
 int gdb_stdlog ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 scalar_t__ mips_debug ;
 int mips_fpa0_regnum (int ) ;
 int mips_saved_regsize (struct gdbarch_tdep*) ;
 int mips_stack_argsize (struct gdbarch_tdep*) ;
 scalar_t__ mips_type_needs_double_align (struct type*) ;
 int paddr_nz (int) ;
 int phex (int,int) ;
 int regcache_cooked_write_signed (struct regcache*,int ,int) ;
 int write_memory (int,char*,int) ;
 int write_register (int,int) ;

__attribute__((used)) static CORE_ADDR
mips_o64_push_dummy_call (struct gdbarch *gdbarch, CORE_ADDR func_addr,
     struct regcache *regcache, CORE_ADDR bp_addr,
     int nargs,
     struct value **args, CORE_ADDR sp,
     int struct_return, CORE_ADDR struct_addr)
{
  int argreg;
  int float_argreg;
  int argnum;
  int len = 0;
  int stack_offset = 0;
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);



  regcache_cooked_write_signed (regcache, T9_REGNUM, func_addr);



  regcache_cooked_write_signed (regcache, RA_REGNUM, bp_addr);







  sp = align_down (sp, 16);
  struct_addr = align_down (struct_addr, 16);


  for (argnum = 0; argnum < nargs; argnum++)
    len += align_up (TYPE_LENGTH (VALUE_TYPE (args[argnum])),
       mips_stack_argsize (tdep));
  sp -= align_up (len, 16);

  if (mips_debug)
    fprintf_unfiltered (gdb_stdlog,
   "mips_o64_push_dummy_call: sp=0x%s allocated %ld\n",
   paddr_nz (sp), (long) align_up (len, 16));


  argreg = A0_REGNUM;
  float_argreg = mips_fpa0_regnum (current_gdbarch);


  if (struct_return)
    {
      if (mips_debug)
 fprintf_unfiltered (gdb_stdlog,
       "mips_o64_push_dummy_call: struct_return reg=%d 0x%s\n",
       argreg, paddr_nz (struct_addr));
      write_register (argreg++, struct_addr);
      stack_offset += mips_stack_argsize (tdep);
    }




  for (argnum = 0; argnum < nargs; argnum++)
    {
      char *val;
      struct value *arg = args[argnum];
      struct type *arg_type = check_typedef (VALUE_TYPE (arg));
      int len = TYPE_LENGTH (arg_type);
      enum type_code typecode = TYPE_CODE (arg_type);

      if (mips_debug)
 fprintf_unfiltered (gdb_stdlog,
       "mips_o64_push_dummy_call: %d len=%d type=%d",
       argnum + 1, len, (int) typecode);

      val = (char *) VALUE_CONTENTS (arg);






      if (!FP_REGISTER_DOUBLE && fp_register_arg_p (typecode, arg_type))
 {
   if ((float_argreg & 1))
     float_argreg++;
 }
      if (fp_register_arg_p (typecode, arg_type)
   && float_argreg <= MIPS_LAST_FP_ARG_REGNUM)
 {
   if (!FP_REGISTER_DOUBLE && len == 8)
     {
       int low_offset = TARGET_BYTE_ORDER == BFD_ENDIAN_BIG ? 4 : 0;
       unsigned long regval;


       regval = extract_unsigned_integer (val + low_offset, 4);
       if (mips_debug)
  fprintf_unfiltered (gdb_stdlog, " - fpreg=%d val=%s",
        float_argreg, phex (regval, 4));
       write_register (float_argreg++, regval);
       if (mips_debug)
  fprintf_unfiltered (gdb_stdlog, " - reg=%d val=%s",
        argreg, phex (regval, 4));
       write_register (argreg++, regval);


       regval = extract_unsigned_integer (val + 4 - low_offset, 4);
       if (mips_debug)
  fprintf_unfiltered (gdb_stdlog, " - fpreg=%d val=%s",
        float_argreg, phex (regval, 4));
       write_register (float_argreg++, regval);

       if (mips_debug)
  fprintf_unfiltered (gdb_stdlog, " - reg=%d val=%s",
        argreg, phex (regval, 4));
       write_register (argreg++, regval);
     }
   else
     {




       LONGEST regval = extract_unsigned_integer (val, len);
       if (mips_debug)
  fprintf_unfiltered (gdb_stdlog, " - fpreg=%d val=%s",
        float_argreg, phex (regval, len));
       write_register (float_argreg++, regval);




       if (mips_debug)
  fprintf_unfiltered (gdb_stdlog, " - reg=%d val=%s",
        argreg, phex (regval, len));
       write_register (argreg, regval);
       argreg += FP_REGISTER_DOUBLE ? 1 : 2;
     }

   stack_offset += align_up (len, mips_stack_argsize (tdep));
 }
      else
 {
   int odd_sized_struct = ((len > mips_saved_regsize (tdep))
      && (len % mips_saved_regsize (tdep) != 0));


   if (mips_saved_regsize (tdep) < 8
       && mips_type_needs_double_align (arg_type))
     {
       if ((argreg & 1))
  argreg++;
     }


   while (len > 0)
     {

       int stack_used_p = 0;
       int partial_len = (len < mips_saved_regsize (tdep)
     ? len : mips_saved_regsize (tdep));

       if (mips_debug)
  fprintf_unfiltered (gdb_stdlog, " -- partial=%d",
        partial_len);


       if (argreg > MIPS_LAST_ARG_REGNUM
    || odd_sized_struct
    || fp_register_arg_p (typecode, arg_type))
  {


    int longword_offset = 0;
    CORE_ADDR addr;
    stack_used_p = 1;
    if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
      {
        if (mips_stack_argsize (tdep) == 8
     && (typecode == TYPE_CODE_INT
         || typecode == TYPE_CODE_PTR
         || typecode == TYPE_CODE_FLT) && len <= 4)
   longword_offset = mips_stack_argsize (tdep) - len;
      }

    if (mips_debug)
      {
        fprintf_unfiltered (gdb_stdlog, " - stack_offset=0x%s",
       paddr_nz (stack_offset));
        fprintf_unfiltered (gdb_stdlog, " longword_offset=0x%s",
       paddr_nz (longword_offset));
      }

    addr = sp + stack_offset + longword_offset;

    if (mips_debug)
      {
        int i;
        fprintf_unfiltered (gdb_stdlog, " @0x%s ",
       paddr_nz (addr));
        for (i = 0; i < partial_len; i++)
   {
     fprintf_unfiltered (gdb_stdlog, "%02x",
           val[i] & 0xff);
   }
      }
    write_memory (addr, val, partial_len);
  }






       if (argreg <= MIPS_LAST_ARG_REGNUM
    && !fp_register_arg_p (typecode, arg_type))
  {
    LONGEST regval = extract_signed_integer (val, partial_len);
    if (mips_saved_regsize (tdep) < 8
        && TARGET_BYTE_ORDER == BFD_ENDIAN_BIG
        && partial_len < mips_saved_regsize (tdep)
        && (typecode == TYPE_CODE_STRUCT ||
     typecode == TYPE_CODE_UNION))
      regval <<= ((mips_saved_regsize (tdep) - partial_len) *
    TARGET_CHAR_BIT);

    if (mips_debug)
      fprintf_filtered (gdb_stdlog, " - reg=%d val=%s",
          argreg,
          phex (regval,
         mips_saved_regsize (tdep)));
    write_register (argreg, regval);
    argreg++;



    float_argreg = MIPS_LAST_FP_ARG_REGNUM + 1;
  }

       len -= partial_len;
       val += partial_len;
       stack_offset += align_up (partial_len,
     mips_stack_argsize (tdep));
     }
 }
      if (mips_debug)
 fprintf_unfiltered (gdb_stdlog, "\n");
    }

  regcache_cooked_write_signed (regcache, SP_REGNUM, sp);


  return sp;
}
