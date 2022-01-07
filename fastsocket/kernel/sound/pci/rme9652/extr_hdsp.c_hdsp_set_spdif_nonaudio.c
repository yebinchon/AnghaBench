
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; } ;


 int HDSP_SPDIFNonAudio ;
 int HDSP_controlRegister ;
 int hdsp_write (struct hdsp*,int ,int ) ;

__attribute__((used)) static int hdsp_set_spdif_nonaudio(struct hdsp *hdsp, int val)
{
 if (val)
  hdsp->control_register |= HDSP_SPDIFNonAudio;
 else
  hdsp->control_register &= ~HDSP_SPDIFNonAudio;
 hdsp_write(hdsp, HDSP_controlRegister, hdsp->control_register);
 return 0;
}
