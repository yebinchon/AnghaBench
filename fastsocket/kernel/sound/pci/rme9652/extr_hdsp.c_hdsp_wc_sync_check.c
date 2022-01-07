
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int dummy; } ;


 int HDSP_status2Register ;
 int HDSP_wc_lock ;
 int HDSP_wc_sync ;
 int hdsp_read (struct hdsp*,int ) ;

__attribute__((used)) static int hdsp_wc_sync_check(struct hdsp *hdsp)
{
 int status2 = hdsp_read(hdsp, HDSP_status2Register);
 if (status2 & HDSP_wc_lock) {
  if (status2 & HDSP_wc_sync)
   return 2;
  else
    return 1;
 } else
  return 0;
 return 0;
}
