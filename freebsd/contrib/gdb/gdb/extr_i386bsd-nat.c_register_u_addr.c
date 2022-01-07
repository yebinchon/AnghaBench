
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int REG_ADDR (int ,int) ;

CORE_ADDR
register_u_addr (CORE_ADDR blockend, int regno)
{
  return (CORE_ADDR) REG_ADDR (blockend, regno);
}
