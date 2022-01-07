
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {void* io_type; } ;


 void* Digiface ;
 int EIO ;
 int HDSP_DllError ;
 int HDSP_PROGRAM ;
 int HDSP_SHORT_WAIT ;
 int HDSP_S_LOAD ;
 int HDSP_VERSION_BIT ;
 int HDSP_control2Reg ;
 int HDSP_fifoData ;
 int HDSP_status2Register ;
 int HDSP_statusRegister ;
 int HDSP_version1 ;
 void* Multiface ;
 scalar_t__ hdsp_fifo_wait (struct hdsp*,int ,int ) ;
 int hdsp_read (struct hdsp*,int ) ;
 int hdsp_write (struct hdsp*,int ,int ) ;

__attribute__((used)) static int hdsp_get_iobox_version (struct hdsp *hdsp)
{
 if ((hdsp_read (hdsp, HDSP_statusRegister) & HDSP_DllError) != 0) {

  hdsp_write (hdsp, HDSP_control2Reg, HDSP_PROGRAM);
  hdsp_write (hdsp, HDSP_fifoData, 0);
  if (hdsp_fifo_wait (hdsp, 0, HDSP_SHORT_WAIT) < 0)
   return -EIO;

  hdsp_write (hdsp, HDSP_control2Reg, HDSP_S_LOAD);
  hdsp_write (hdsp, HDSP_fifoData, 0);

  if (hdsp_fifo_wait (hdsp, 0, HDSP_SHORT_WAIT)) {
   hdsp->io_type = Multiface;
   hdsp_write (hdsp, HDSP_control2Reg, HDSP_VERSION_BIT);
   hdsp_write (hdsp, HDSP_control2Reg, HDSP_S_LOAD);
   hdsp_fifo_wait (hdsp, 0, HDSP_SHORT_WAIT);
  } else {
   hdsp->io_type = Digiface;
  }
 } else {

  if (hdsp_read(hdsp, HDSP_status2Register) & HDSP_version1)
   hdsp->io_type = Multiface;
  else
   hdsp->io_type = Digiface;
 }
 return 0;
}
