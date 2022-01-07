
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int) ;

__attribute__((used)) static u32 build_command(int disp_no, u32 reg, u32 val)
{
 return ((disp_no << 26) | BIT(25) | (val << 16) | (disp_no << 10) |
  (reg << 0));
}
