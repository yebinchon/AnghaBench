
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; } ;
 int HDSP_SyncRefMask ;
 int HDSP_SyncRef_ADAT2 ;
 int HDSP_SyncRef_ADAT3 ;
 int HDSP_SyncRef_ADAT_SYNC ;
 int HDSP_SyncRef_SPDIF ;
 int HDSP_SyncRef_WORD ;
 int HDSP_controlRegister ;
 int hdsp_write (struct hdsp*,int ,int ) ;

__attribute__((used)) static int hdsp_set_pref_sync_ref(struct hdsp *hdsp, int pref)
{
 hdsp->control_register &= ~HDSP_SyncRefMask;
 switch (pref) {
 case 133:
  hdsp->control_register &= ~HDSP_SyncRefMask;
  break;
 case 132:
  hdsp->control_register |= HDSP_SyncRef_ADAT2;
  break;
 case 131:
  hdsp->control_register |= HDSP_SyncRef_ADAT3;
  break;
 case 129:
  hdsp->control_register |= HDSP_SyncRef_SPDIF;
  break;
 case 128:
  hdsp->control_register |= HDSP_SyncRef_WORD;
  break;
 case 130:
  hdsp->control_register |= HDSP_SyncRef_ADAT_SYNC;
  break;
 default:
  return -1;
 }
 hdsp_write(hdsp, HDSP_controlRegister, hdsp->control_register);
 return 0;
}
