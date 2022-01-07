
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; int member_1; } ;
typedef TYPE_1__ u32 ;


 int write_firh_reg (int,int,TYPE_1__ const) ;
 int write_firhv_reg (int,int,TYPE_1__ const) ;

__attribute__((used)) static void set_upsampling_coef_table(int plane)
{
 const u32 coef[][2] = {
  { 0x00800000, 0x00800000 },
  { 0x0D7CF800, 0x037B02FF },
  { 0x1E70F5FF, 0x0C6F05FE },
  { 0x335FF5FE, 0x205907FB },
  { 0xF74949F7, 0x00404000 },
  { 0xF55F33FB, 0x075920FE },
  { 0xF5701EFE, 0x056F0CFF },
  { 0xF87C0DFF, 0x027B0300 },
 };
 int i;

 for (i = 0; i < 8; i++) {
  write_firh_reg(plane, i, coef[i][0]);
  write_firhv_reg(plane, i, coef[i][1]);
 }
}
