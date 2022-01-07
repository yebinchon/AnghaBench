
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcxhr_mgr {int dummy; } ;
struct firmware {int dummy; } ;


 int PCXHR_DSP_ISR ;
 int PCXHR_ISR_HI08_CHK ;
 int PCXHR_IT_DOWNLOAD_DSP ;
 int PCXHR_IT_RESET_BOARD_FUNC ;
 int PCXHR_TIMEOUT_DSP ;
 int pcxhr_check_reg_bit (struct pcxhr_mgr*,int ,int ,int ,int ,unsigned char*) ;
 int pcxhr_download_dsp (struct pcxhr_mgr*,struct firmware const*) ;
 int pcxhr_send_it_dsp (struct pcxhr_mgr*,int ,int ) ;

int pcxhr_load_dsp_binary(struct pcxhr_mgr *mgr, const struct firmware *dsp)
{
 int err;
 unsigned char dummy;
 err = pcxhr_send_it_dsp(mgr, PCXHR_IT_RESET_BOARD_FUNC, 0);
 if (err)
  return err;
 err = pcxhr_send_it_dsp(mgr, PCXHR_IT_DOWNLOAD_DSP, 0);
 if (err)
  return err;
 err = pcxhr_download_dsp(mgr, dsp);
 if (err)
  return err;

 return pcxhr_check_reg_bit(mgr, PCXHR_DSP_ISR,
       PCXHR_ISR_HI08_CHK,
       PCXHR_ISR_HI08_CHK,
       PCXHR_TIMEOUT_DSP, &dummy);
}
