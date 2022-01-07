
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wavnc_info ;


 unsigned int WACMD_GETREV ;
 int waveartist_cmd (int *,int,unsigned int*,int,unsigned int*) ;

__attribute__((used)) static int
waveartist_getrev(wavnc_info *devc, char *rev)
{
 unsigned int temp[2];
 unsigned int cmd = WACMD_GETREV;

 waveartist_cmd(devc, 1, &cmd, 2, temp);

 rev[0] = temp[0] >> 8;
 rev[1] = temp[0] & 255;
 rev[2] = '\0';

 return temp[0];
}
