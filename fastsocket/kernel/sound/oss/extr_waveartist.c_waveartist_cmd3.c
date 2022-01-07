
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wavnc_info ;


 int waveartist_cmd (int *,int,unsigned int*,int ,int *) ;

__attribute__((used)) static inline int
waveartist_cmd3(wavnc_info *devc, unsigned int cmd,
  unsigned int arg1, unsigned int arg2)
{
 unsigned int vals[3];

 vals[0] = cmd;
 vals[1] = arg1;
 vals[2] = arg2;

 return waveartist_cmd(devc, 3, vals, 0, ((void*)0));
}
