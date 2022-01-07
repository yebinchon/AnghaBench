
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct regcache {int dummy; } ;
typedef enum amd64_reg_class { ____Placeholder_amd64_reg_class } amd64_reg_class ;
typedef int CORE_ADDR ;



 int AMD64_RAX_REGNUM ;
 int ARRAY_SIZE (int*) ;
 int TYPE_LENGTH (struct type*) ;
 char* VALUE_CONTENTS (struct value*) ;
 struct type* VALUE_TYPE (struct value*) ;
 struct value** alloca (int) ;
 int amd64_classify (struct type*,int*) ;
 int gdb_assert (int) ;
 int memcpy (char*,char*,int ) ;
 int memset (char*,int ,int) ;
 int min (int,int) ;
 int regcache_raw_write_part (struct regcache*,int,int,int,char*) ;
 int regcache_raw_write_unsigned (struct regcache*,int ,int) ;
 int write_memory (int,char*,int) ;

__attribute__((used)) static CORE_ADDR
amd64_push_arguments (struct regcache *regcache, int nargs,
        struct value **args, CORE_ADDR sp, int struct_return)
{
  static int integer_regnum[] =
  {
    134,
    132,
    133,
    135,
    8,
    9
  };
  static int sse_regnum[] =
  {

    129 + 0, 128,
    129 + 2, 129 + 3,
    129 + 4, 129 + 5,
    129 + 6, 129 + 7,
  };
  struct value **stack_args = alloca (nargs * sizeof (struct value *));
  int num_stack_args = 0;
  int num_elements = 0;
  int element = 0;
  int integer_reg = 0;
  int sse_reg = 0;
  int i;


  if (struct_return)
    integer_reg++;

  for (i = 0; i < nargs; i++)
    {
      struct type *type = VALUE_TYPE (args[i]);
      int len = TYPE_LENGTH (type);
      enum amd64_reg_class class[2];
      int needed_integer_regs = 0;
      int needed_sse_regs = 0;
      int j;


      amd64_classify (type, class);



      for (j = 0; j < 2; j++)
 {
   if (class[j] == 136)
     needed_integer_regs++;
   else if (class[j] == 131)
     needed_sse_regs++;
 }



      if (integer_reg + needed_integer_regs > ARRAY_SIZE (integer_regnum)
   || sse_reg + needed_sse_regs > ARRAY_SIZE (sse_regnum)
   || (needed_integer_regs == 0 && needed_sse_regs == 0))
 {

   num_elements += ((len + 7) / 8);
   stack_args[num_stack_args++] = args[i];
 }
      else
 {

   char *valbuf = VALUE_CONTENTS (args[i]);
   char buf[8];

   gdb_assert (len <= 16);

   for (j = 0; len > 0; j++, len -= 8)
     {
       int regnum = -1;
       int offset = 0;

       switch (class[j])
  {
  case 136:
    regnum = integer_regnum[integer_reg++];
    break;

  case 131:
    regnum = sse_regnum[sse_reg++];
    break;

  case 130:
    gdb_assert (sse_reg > 0);
    regnum = sse_regnum[sse_reg - 1];
    offset = 8;
    break;

  default:
    gdb_assert (!"Unexpected register class.");
  }

       gdb_assert (regnum != -1);
       memset (buf, 0, sizeof buf);
       memcpy (buf, valbuf + j * 8, min (len, 8));
       regcache_raw_write_part (regcache, regnum, offset, 8, buf);
     }
 }
    }


  sp -= num_elements * 8;



  sp &= ~0xf;


  for (i = 0; i < num_stack_args; i++)
    {
      struct type *type = VALUE_TYPE (stack_args[i]);
      char *valbuf = VALUE_CONTENTS (stack_args[i]);
      int len = TYPE_LENGTH (type);

      write_memory (sp + element * 8, valbuf, len);
      element += ((len + 7) / 8);
    }





  regcache_raw_write_unsigned (regcache, AMD64_RAX_REGNUM, sse_reg);
  return sp;
}
