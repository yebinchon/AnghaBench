
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_info {int dummy; } ;
struct cmd_list_element {int dummy; } ;


 int gdbarch_info_init (struct gdbarch_info*) ;
 int gdbarch_update_p (struct gdbarch_info) ;

__attribute__((used)) static void
mips_abi_update (char *ignore_args, int from_tty, struct cmd_list_element *c)
{
  struct gdbarch_info info;



  gdbarch_info_init (&info);
  gdbarch_update_p (info);
}
