
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_miro {int dummy; } ;


 int ACI_STATUS ;
 int aci_cmd (struct snd_miro*,int ,unsigned char,int) ;

__attribute__((used)) static int aci_getvalue(struct snd_miro * miro, unsigned char index)
{
 return aci_cmd(miro, ACI_STATUS, index, -1);
}
