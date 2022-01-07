
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef int dummy ;
typedef scalar_t__ ULONGEST ;
typedef int CORE_ADDR ;


 int DEPRECATED_CALL_DUMMY_BREAKPOINT_OFFSET ;
 scalar_t__ DEPRECATED_CALL_DUMMY_START_OFFSET ;
 int DEPRECATED_CALL_DUMMY_WORDS ;
 int DEPRECATED_FIX_CALL_DUMMY (char*,int,int,int,struct value**,struct type*,int) ;
 scalar_t__ DEPRECATED_FIX_CALL_DUMMY_P () ;
 int DEPRECATED_REGISTER_SIZE ;
 int DEPRECATED_SIZEOF_CALL_DUMMY_WORDS ;
 scalar_t__ DEPRECATED_USE_GENERIC_DUMMY_FRAMES ;
 scalar_t__ INNER_THAN (int,int) ;
 void* alloca (int) ;
 int current_gdbarch ;
 int gdbarch_push_dummy_call_p (int ) ;
 int generic_save_call_dummy_addr (int,int) ;
 int memcpy (scalar_t__*,int ,int) ;
 int store_unsigned_integer (char*,int,scalar_t__) ;
 int write_memory (int,char*,int) ;

__attribute__((used)) static CORE_ADDR
legacy_push_dummy_code (struct gdbarch *gdbarch,
   CORE_ADDR sp, CORE_ADDR funaddr, int using_gcc,
   struct value **args, int nargs,
   struct type *value_type,
   CORE_ADDR *real_pc, CORE_ADDR *bp_addr)
{
  CORE_ADDR start_sp;
  ULONGEST *dummy = alloca (DEPRECATED_SIZEOF_CALL_DUMMY_WORDS);
  int sizeof_dummy1 = (DEPRECATED_REGISTER_SIZE
         * DEPRECATED_SIZEOF_CALL_DUMMY_WORDS
         / sizeof (ULONGEST));
  char *dummy1 = alloca (sizeof_dummy1);
  memcpy (dummy, DEPRECATED_CALL_DUMMY_WORDS,
   DEPRECATED_SIZEOF_CALL_DUMMY_WORDS);
  if (INNER_THAN (1, 2))
    {

      sp -= sizeof_dummy1;
      start_sp = sp;
    }
  else
    {

      start_sp = sp;
      sp += sizeof_dummy1;
    }






  {
    int i;
    for (i = 0; i < (int) (DEPRECATED_SIZEOF_CALL_DUMMY_WORDS / sizeof (dummy[0]));
  i++)
      store_unsigned_integer (&dummy1[i * DEPRECATED_REGISTER_SIZE],
         DEPRECATED_REGISTER_SIZE,
         (ULONGEST) dummy[i]);
  }




  if (!gdbarch_push_dummy_call_p (current_gdbarch))
    {




      if (DEPRECATED_FIX_CALL_DUMMY_P ())
 {

   DEPRECATED_FIX_CALL_DUMMY (dummy1, start_sp, funaddr, nargs, args,
         value_type, using_gcc);
 }
      (*real_pc) = start_sp;

    }


  (*bp_addr) = (*real_pc) + DEPRECATED_CALL_DUMMY_BREAKPOINT_OFFSET;


  (*real_pc) += DEPRECATED_CALL_DUMMY_START_OFFSET;
  write_memory (start_sp, (char *) dummy1, sizeof_dummy1);
  if (DEPRECATED_USE_GENERIC_DUMMY_FRAMES)
    generic_save_call_dummy_addr (start_sp, start_sp + sizeof_dummy1);
  return sp;
}
