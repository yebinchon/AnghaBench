
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control2_register; } ;


 int HDSP_9652_ENABLE_MIXER ;
 int HDSP_control2Reg ;
 int hdsp_write (struct hdsp*,int ,int ) ;

__attribute__((used)) static void snd_hdsp_9652_enable_mixer (struct hdsp *hdsp)
{
        hdsp->control2_register |= HDSP_9652_ENABLE_MIXER;
 hdsp_write (hdsp, HDSP_control2Reg, hdsp->control2_register);
}
