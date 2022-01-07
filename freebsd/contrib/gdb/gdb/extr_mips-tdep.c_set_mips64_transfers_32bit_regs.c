
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_info {int dummy; } ;
struct cmd_list_element {int dummy; } ;


 int error (char*) ;
 int gdbarch_info_init (struct gdbarch_info*) ;
 int gdbarch_update_p (struct gdbarch_info) ;
 scalar_t__ mips64_transfers_32bit_regs_p ;

__attribute__((used)) static void
set_mips64_transfers_32bit_regs (char *args, int from_tty,
     struct cmd_list_element *c)
{
  struct gdbarch_info info;
  gdbarch_info_init (&info);



  if (!gdbarch_update_p (info))
    {
      mips64_transfers_32bit_regs_p = 0;
      error ("32-bit compatibility mode not supported");
    }
}
