
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_miro {int dummy; } ;


 int aci_cmd (struct snd_miro*,unsigned char,int,int) ;

__attribute__((used)) static int aci_setvalue(struct snd_miro * miro, unsigned char index, int value)
{
 return aci_cmd(miro, index, value, -1);
}
