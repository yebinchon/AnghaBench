
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct regcache {int dummy; } ;
struct obj_section {int * objfile; } ;
struct minimal_symbol {int dummy; } ;
struct gdbarch_tdep {int wordsize; int ppc_gp0_regnum; scalar_t__ ppc_vr0_regnum; int ppc_lr_regnum; } ;
struct gdbarch {int dummy; } ;
typedef int ULONGEST ;
typedef int LONGEST ;
typedef int CORE_ADDR ;


 int FP0_REGNUM ;
 int MAX_REGISTER_SIZE ;
 int SP_REGNUM ;
 char* SYMBOL_LINKAGE_NAME (struct minimal_symbol*) ;
 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ARRAY ;
 scalar_t__ TYPE_CODE_ENUM ;
 scalar_t__ TYPE_CODE_FLT ;
 scalar_t__ TYPE_CODE_INT ;
 int TYPE_LENGTH (struct type*) ;
 scalar_t__ TYPE_VECTOR (struct type*) ;
 char* VALUE_CONTENTS (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 int align_down (int,int) ;
 int align_up (int,int) ;
 struct type* check_typedef (int ) ;
 int convert_typed_floating (char*,struct type*,char*,struct type*) ;
 int current_gdbarch ;
 struct obj_section* find_pc_section (int) ;
 int gdb_assert (int) ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 struct minimal_symbol* lookup_minimal_symbol (char*,int *,int *) ;
 struct minimal_symbol* lookup_minimal_symbol_by_pc (int) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 scalar_t__ ppc_floating_point_unit_p (int ) ;
 int read_memory_unsigned_integer (int,int) ;
 int read_sp () ;
 int regcache_cooked_write (struct regcache*,int,char*) ;
 int regcache_cooked_write_signed (struct regcache*,int,int) ;
 int regcache_cooked_write_unsigned (struct regcache*,int,int) ;
 struct type* register_type (struct gdbarch*,int) ;
 int unpack_long (struct type*,char*) ;
 int write_memory (int,char*,int) ;
 int write_memory_signed_integer (int,int,int const) ;
 int write_memory_unsigned_integer (int,int,int) ;

CORE_ADDR
ppc64_sysv_abi_push_dummy_call (struct gdbarch *gdbarch, CORE_ADDR func_addr,
    struct regcache *regcache, CORE_ADDR bp_addr,
    int nargs, struct value **args, CORE_ADDR sp,
    int struct_return, CORE_ADDR struct_addr)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);



  const CORE_ADDR back_chain = read_sp ();

  int write_pass;


  LONGEST vparam_size = 0;


  LONGEST gparam_size = 0;







  gdb_assert (tdep->wordsize == 8);
  for (write_pass = 0; write_pass < 2; write_pass++)
    {
      int argno;


      int freg = 1;


      int greg = 3;

      int vreg = 2;


      CORE_ADDR gparam;


      CORE_ADDR vparam;

      if (!write_pass)
 {




   gparam = 0;
   vparam = 0;
 }
      else
 {



   vparam = align_down (sp - vparam_size, 16);
   gparam = align_down (vparam - gparam_size, 16);


   sp = align_down (gparam - 48, 16);
 }






      if (struct_return)
 {
   if (write_pass)
     regcache_cooked_write_signed (regcache,
       tdep->ppc_gp0_regnum + greg,
       struct_addr);
   greg++;
   gparam = align_up (gparam + tdep->wordsize, tdep->wordsize);
 }

      for (argno = 0; argno < nargs; argno++)
 {
   struct value *arg = args[argno];
   struct type *type = check_typedef (VALUE_TYPE (arg));
   char *val = VALUE_CONTENTS (arg);
   if (TYPE_CODE (type) == TYPE_CODE_FLT && TYPE_LENGTH (type) <= 8)
     {



       if (write_pass)
  {
    if (ppc_floating_point_unit_p (current_gdbarch)
        && freg <= 13)
      {
        char regval[MAX_REGISTER_SIZE];
        struct type *regtype = register_type (gdbarch,
           FP0_REGNUM);
        convert_typed_floating (val, type, regval, regtype);
        regcache_cooked_write (regcache, FP0_REGNUM + freg,
          regval);
      }
    if (greg <= 10)
      {
        char regval[MAX_REGISTER_SIZE];
        memset (regval, 0, sizeof regval);
        memcpy (regval, val, TYPE_LENGTH (type));
        regcache_cooked_write (regcache,
          tdep->ppc_gp0_regnum + greg,
          regval);
      }
    write_memory (gparam, val, TYPE_LENGTH (type));
  }

       freg++;
       greg++;
       gparam = align_up (gparam + TYPE_LENGTH (type), tdep->wordsize);
     }
   else if (TYPE_LENGTH (type) == 16 && TYPE_VECTOR (type)
     && TYPE_CODE (type) == TYPE_CODE_ARRAY
     && tdep->ppc_vr0_regnum >= 0)
     {





       if (vreg <= 13)
  {
    if (write_pass)
      regcache_cooked_write (regcache,
        tdep->ppc_vr0_regnum + vreg, val);
    vreg++;
  }
       else
  {
    if (write_pass)
      write_memory (vparam, val, TYPE_LENGTH (type));
    vparam = align_up (vparam + TYPE_LENGTH (type), 16);
  }
     }
   else if ((TYPE_CODE (type) == TYPE_CODE_INT
      || TYPE_CODE (type) == TYPE_CODE_ENUM)
     && TYPE_LENGTH (type) <= 8)
     {


       if (write_pass)
  {

    ULONGEST word = unpack_long (type, val);
    if (greg <= 10)
      regcache_cooked_write_unsigned (regcache,
          tdep->ppc_gp0_regnum +
          greg, word);
    write_memory_unsigned_integer (gparam, tdep->wordsize,
       word);
  }
       greg++;
       gparam = align_up (gparam + TYPE_LENGTH (type), tdep->wordsize);
     }
   else
     {
       int byte;
       for (byte = 0; byte < TYPE_LENGTH (type);
     byte += tdep->wordsize)
  {
    if (write_pass && greg <= 10)
      {
        char regval[MAX_REGISTER_SIZE];
        int len = TYPE_LENGTH (type) - byte;
        if (len > tdep->wordsize)
   len = tdep->wordsize;
        memset (regval, 0, sizeof regval);
        memcpy (regval, val + byte, len);

        if (len == 1 || len == 2 || len == 4)
   memcpy (regval + tdep->wordsize - len,
    val + byte, len);
        regcache_cooked_write (regcache, greg, regval);
      }
    greg++;
  }
       if (write_pass)







  write_memory (gparam, val, TYPE_LENGTH (type));

       gparam = align_up (gparam + TYPE_LENGTH (type), tdep->wordsize);
     }
 }

      if (!write_pass)
 {

   vparam_size = vparam;


   if (greg < 8)
     gparam_size = 8 * tdep->wordsize;
   else
     gparam_size = gparam;
 }
    }


  regcache_cooked_write_signed (regcache, SP_REGNUM, sp);


  write_memory_signed_integer (sp, tdep->wordsize, back_chain);



  regcache_cooked_write_signed (regcache, tdep->ppc_lr_regnum, bp_addr);







  {


    struct minimal_symbol *dot_fn = lookup_minimal_symbol_by_pc (func_addr);
    if (dot_fn != ((void*)0) && SYMBOL_LINKAGE_NAME (dot_fn)[0] == '.')
      {


 struct obj_section *dot_fn_section = find_pc_section (func_addr);
 if (dot_fn_section != ((void*)0) && dot_fn_section->objfile != ((void*)0))
   {





     struct minimal_symbol *fn =
       lookup_minimal_symbol (SYMBOL_LINKAGE_NAME (dot_fn) + 1, ((void*)0),
         dot_fn_section->objfile);
     if (fn != ((void*)0))
       {


  CORE_ADDR toc =
    read_memory_unsigned_integer (SYMBOL_VALUE_ADDRESS (fn)
      + tdep->wordsize,
      tdep->wordsize);
  regcache_cooked_write_unsigned (regcache,
      tdep->ppc_gp0_regnum + 2, toc);
       }
   }
      }
  }

  return sp;
}
