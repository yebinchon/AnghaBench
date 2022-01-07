
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ptid_t ;
struct TYPE_2__ {int pc; } ;
typedef int CORE_ADDR ;


 int current_gdbarch ;
 TYPE_1__* mips_regnum (int ) ;
 int read_signed_register_pid (int ,int ) ;

__attribute__((used)) static CORE_ADDR
mips_read_pc (ptid_t ptid)
{
  return read_signed_register_pid (mips_regnum (current_gdbarch)->pc, ptid);
}
