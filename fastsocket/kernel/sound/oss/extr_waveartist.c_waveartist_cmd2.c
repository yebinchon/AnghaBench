
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wavnc_info ;


 int waveartist_cmd (int *,int,unsigned int*,int,unsigned int*) ;

__attribute__((used)) static inline int
waveartist_cmd2(wavnc_info *devc, unsigned int cmd, unsigned int arg)
{
 unsigned int vals[2];

 vals[0] = cmd;
 vals[1] = arg;

 return waveartist_cmd(devc, 2, vals, 1, vals);
}
