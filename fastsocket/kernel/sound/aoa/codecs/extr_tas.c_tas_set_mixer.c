
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tas {int* mixer_l; int* mixer_r; } ;


 int TAS_REG_LMIX ;
 int TAS_REG_RMIX ;
 int* tas_gaintable ;
 int tas_write_reg (struct tas*,int ,int,int*) ;

__attribute__((used)) static void tas_set_mixer(struct tas *tas)
{
 u8 block[9];
 int tmp, i;
 u8 val;

 for (i=0;i<3;i++) {
  val = tas->mixer_l[i];
  if (val > 177) val = 177;
  tmp = tas_gaintable[val];
  block[3*i+0] = tmp>>16;
  block[3*i+1] = tmp>>8;
  block[3*i+2] = tmp;
 }
 tas_write_reg(tas, TAS_REG_LMIX, 9, block);

 for (i=0;i<3;i++) {
  val = tas->mixer_r[i];
  if (val > 177) val = 177;
  tmp = tas_gaintable[val];
  block[3*i+0] = tmp>>16;
  block[3*i+1] = tmp>>8;
  block[3*i+2] = tmp;
 }
 tas_write_reg(tas, TAS_REG_RMIX, 9, block);
}
