
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int recmask; TYPE_1__* mix; } ;
typedef TYPE_2__ wavnc_info ;
struct TYPE_6__ {unsigned int recording_devs; unsigned int (* select_input ) (TYPE_2__*,unsigned int,unsigned char*,unsigned char*) ;} ;


 int hweight32 (unsigned int) ;
 unsigned int stub1 (TYPE_2__*,unsigned int,unsigned char*,unsigned char*) ;
 int waveartist_set_adc_mux (TYPE_2__*,unsigned char,unsigned char) ;

__attribute__((used)) static void
waveartist_set_recmask(wavnc_info *devc, unsigned int recmask)
{
 unsigned char dev_l, dev_r;

 recmask &= devc->mix->recording_devs;





 if (hweight32(recmask) > 1)
  recmask &= ~devc->recmask;





 devc->recmask = devc->mix->select_input(devc, recmask,
      &dev_l, &dev_r);

 waveartist_set_adc_mux(devc, dev_l, dev_r);
}
