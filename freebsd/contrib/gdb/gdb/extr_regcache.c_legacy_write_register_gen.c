
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CANNOT_STORE_REGISTER (int) ;
 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;
 int current_regcache ;
 int gdb_assert (int) ;
 int inferior_ptid ;
 scalar_t__ memcmp (int ,void const*,int) ;
 int memcpy (int ,void const*,int) ;
 int ptid_equal (int ,int ) ;
 scalar_t__ real_register (int) ;
 int register_buffer (int ,int) ;
 scalar_t__ register_cached (int) ;
 int registers_changed () ;
 int registers_ptid ;
 int set_register_cached (int,int) ;
 int target_prepare_to_store () ;
 int target_store_registers (int) ;

__attribute__((used)) static void
legacy_write_register_gen (int regnum, const void *myaddr)
{
  int size;
  gdb_assert (regnum >= 0 && regnum < (NUM_REGS + NUM_PSEUDO_REGS));



  if (CANNOT_STORE_REGISTER (regnum))
    return;

  if (! ptid_equal (registers_ptid, inferior_ptid))
    {
      registers_changed ();
      registers_ptid = inferior_ptid;
    }

  size = DEPRECATED_REGISTER_RAW_SIZE (regnum);

  if (real_register (regnum))
    {


      if (register_cached (regnum)
   && (memcmp (register_buffer (current_regcache, regnum), myaddr, size)
       == 0))
 return;
      else
 target_prepare_to_store ();
    }

  memcpy (register_buffer (current_regcache, regnum), myaddr, size);

  set_register_cached (regnum, 1);
  target_store_registers (regnum);
}
