
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wavnc_info ;


 int waveartist_cmd (int *,int,unsigned int*,int,unsigned int*) ;

__attribute__((used)) static inline unsigned int
waveartist_cmd1_r(wavnc_info *devc, unsigned int cmd)
{
 unsigned int ret;

 waveartist_cmd(devc, 1, &cmd, 1, &ret);

 return ret;
}
