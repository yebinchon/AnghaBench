
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int dummy; } ;


 int HDSP_Lock0 ;
 int HDSP_Sync0 ;
 int HDSP_statusRegister ;
 int hdsp_read (struct hdsp*,int ) ;

__attribute__((used)) static int hdsp_adat_sync_check(struct hdsp *hdsp, int idx)
{
 int status = hdsp_read(hdsp, HDSP_statusRegister);

 if (status & (HDSP_Lock0>>idx)) {
  if (status & (HDSP_Sync0>>idx))
   return 2;
  else
   return 1;
 } else
  return 0;
}
