
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_address_info {int dummy; } ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int mips_classify_address (struct mips_address_info*,int ,int,int) ;

bool
mips_legitimate_address_p (enum machine_mode mode, rtx x, int strict)
{
  struct mips_address_info addr;

  return mips_classify_address (&addr, x, mode, strict);
}
