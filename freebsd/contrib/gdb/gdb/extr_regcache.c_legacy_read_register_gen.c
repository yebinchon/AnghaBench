
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;
 int current_regcache ;
 int gdb_assert (int) ;
 int inferior_ptid ;
 int memcpy (char*,int ,int ) ;
 int ptid_equal (int ,int ) ;
 int register_buffer (int ,int) ;
 int register_cached (int) ;
 int registers_changed () ;
 int registers_ptid ;
 int target_fetch_registers (int) ;

__attribute__((used)) static void
legacy_read_register_gen (int regnum, char *myaddr)
{
  gdb_assert (regnum >= 0 && regnum < (NUM_REGS + NUM_PSEUDO_REGS));
  if (! ptid_equal (registers_ptid, inferior_ptid))
    {
      registers_changed ();
      registers_ptid = inferior_ptid;
    }

  if (!register_cached (regnum))
    target_fetch_registers (regnum);

  memcpy (myaddr, register_buffer (current_regcache, regnum),
   DEPRECATED_REGISTER_RAW_SIZE (regnum));
}
