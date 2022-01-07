
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;



__attribute__((used)) static CORE_ADDR
make_mips16_addr (CORE_ADDR addr)
{
  return ((addr) | 1);
}
