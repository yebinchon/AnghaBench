
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int inferior_ptid ;
 int read_pc_pid (int ) ;

CORE_ADDR
read_pc (void)
{
  return read_pc_pid (inferior_ptid);
}
