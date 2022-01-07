
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gregset ;
typedef int gdb_gregset_t ;
typedef int gdb_fpregset_t ;
typedef int fpregset ;
typedef int CORE_ADDR ;


 int FP0_REGNUM ;
 int memcpy (int *,char*,int) ;
 int supply_fpregset (int *) ;
 int supply_gregset (int *) ;
 int warning (char*) ;

__attribute__((used)) static void
fetch_core_registers (char *core_reg_sect, unsigned core_reg_size, int which,
        CORE_ADDR reg_addr)
{
  gdb_gregset_t gregset;
  gdb_fpregset_t fpregset;

  switch (which)
    {
    case 0:
      if (core_reg_size != sizeof (gregset))
 warning ("Wrong size gregset in core file.");
      else
 {
   memcpy (&gregset, core_reg_sect, sizeof (gregset));
   supply_gregset (&gregset);
 }
      break;

    case 2:
      if (core_reg_size != sizeof (fpregset))
 warning ("Wrong size fpregset in core file.");
      else
 {
   memcpy (&fpregset, core_reg_sect, sizeof (fpregset));
   if (FP0_REGNUM >= 0)
     supply_fpregset (&fpregset);
 }
      break;

    default:



      break;
    }
}
