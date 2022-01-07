
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ TARGET_ARM ;
 int arm_arm_address_cost (int ) ;
 int arm_thumb_address_cost (int ) ;

__attribute__((used)) static int
arm_address_cost (rtx x)
{
  return TARGET_ARM ? arm_arm_address_cost (x) : arm_thumb_address_cost (x);
}
