
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int dummy; } ;


 int HDSP_AUTOSYNC_FROM_ADAT1 ;
 int HDSP_AUTOSYNC_FROM_ADAT2 ;
 int HDSP_AUTOSYNC_FROM_ADAT3 ;
 int HDSP_AUTOSYNC_FROM_ADAT_SYNC ;
 int HDSP_AUTOSYNC_FROM_NONE ;
 int HDSP_AUTOSYNC_FROM_SPDIF ;
 int HDSP_AUTOSYNC_FROM_WORD ;







 int HDSP_status2Register ;
 unsigned int hdsp_read (struct hdsp*,int ) ;

__attribute__((used)) static int hdsp_autosync_ref(struct hdsp *hdsp)
{

 unsigned int status2 = hdsp_read(hdsp, HDSP_status2Register);

 switch (status2 & 134) {
 case 128:
  return HDSP_AUTOSYNC_FROM_WORD;
 case 130:
  return HDSP_AUTOSYNC_FROM_ADAT_SYNC;
 case 129:
  return HDSP_AUTOSYNC_FROM_SPDIF;
 case 134:
  return HDSP_AUTOSYNC_FROM_NONE;
 case 133:
  return HDSP_AUTOSYNC_FROM_ADAT1;
 case 132:
  return HDSP_AUTOSYNC_FROM_ADAT2;
 case 131:
  return HDSP_AUTOSYNC_FROM_ADAT3;
 default:
  return HDSP_AUTOSYNC_FROM_WORD;
 }
 return 0;
}
