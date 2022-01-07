
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int s626_ai_reg_to_uint(int data)
{
 unsigned int tempdata;

 tempdata = (data >> 18);
 if (tempdata & 0x2000)
  tempdata &= 0x1fff;
 else
  tempdata += (1 << 13);

 return tempdata;
}
