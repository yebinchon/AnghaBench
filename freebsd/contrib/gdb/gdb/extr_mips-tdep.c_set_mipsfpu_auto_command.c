
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mips_fpu_type_auto ;

__attribute__((used)) static void
set_mipsfpu_auto_command (char *args, int from_tty)
{
  mips_fpu_type_auto = 1;
}
