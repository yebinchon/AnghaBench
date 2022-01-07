
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int multisound_dev_t ;
typedef int BYTE ;


 int dsp_full_reset () ;
 int msnd_send_dsp_cmd (int *,int ) ;

__attribute__((used)) static __inline__ int chk_send_dsp_cmd(multisound_dev_t *dev, register BYTE cmd)
{
 if (msnd_send_dsp_cmd(dev, cmd) == 0)
  return 0;
 dsp_full_reset();
 return msnd_send_dsp_cmd(dev, cmd);
}
