
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int SImode ;
 int mips_address_insns (int ,int ) ;

__attribute__((used)) static int
mips_address_cost (rtx addr)
{
  return mips_address_insns (addr, SImode);
}
