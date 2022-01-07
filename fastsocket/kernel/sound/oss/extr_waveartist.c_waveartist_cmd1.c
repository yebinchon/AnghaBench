
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wavnc_info ;


 int waveartist_cmd (int *,int,unsigned int*,int ,int *) ;

__attribute__((used)) static inline int
waveartist_cmd1(wavnc_info *devc, unsigned int cmd)
{
 return waveartist_cmd(devc, 1, &cmd, 0, ((void*)0));
}
