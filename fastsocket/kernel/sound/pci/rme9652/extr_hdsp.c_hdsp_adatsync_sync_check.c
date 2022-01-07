
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int dummy; } ;


 int HDSP_TimecodeLock ;
 int HDSP_TimecodeSync ;
 int HDSP_statusRegister ;
 int hdsp_read (struct hdsp*,int ) ;

__attribute__((used)) static int hdsp_adatsync_sync_check(struct hdsp *hdsp)
{
 int status = hdsp_read(hdsp, HDSP_statusRegister);
 if (status & HDSP_TimecodeLock) {
  if (status & HDSP_TimecodeSync)
   return 2;
  else
   return 1;
 } else
  return 0;
}
