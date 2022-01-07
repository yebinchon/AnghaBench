
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {scalar_t__ io_type; int state; } ;


 int EIO ;
 scalar_t__ H9632 ;
 scalar_t__ H9652 ;
 int HDSP_ConfigError ;
 int HDSP_FirmwareLoaded ;
 int HDSP_statusRegister ;
 int hdsp_read (struct hdsp*,int ) ;
 int snd_printk (char*) ;

__attribute__((used)) static int hdsp_check_for_iobox (struct hdsp *hdsp)
{
 if (hdsp->io_type == H9652 || hdsp->io_type == H9632) return 0;
 if (hdsp_read (hdsp, HDSP_statusRegister) & HDSP_ConfigError) {
  snd_printk ("Hammerfall-DSP: no Digiface or Multiface connected!\n");
  hdsp->state &= ~HDSP_FirmwareLoaded;
  return -EIO;
 }
 return 0;
}
