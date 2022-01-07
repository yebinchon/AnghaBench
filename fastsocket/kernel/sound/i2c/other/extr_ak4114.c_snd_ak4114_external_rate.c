
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4114 {int dummy; } ;


 int AK4114_REG_RCS1 ;
 int external_rate (unsigned char) ;
 unsigned char reg_read (struct ak4114*,int ) ;

int snd_ak4114_external_rate(struct ak4114 *ak4114)
{
 unsigned char rcs1;

 rcs1 = reg_read(ak4114, AK4114_REG_RCS1);
 return external_rate(rcs1);
}
