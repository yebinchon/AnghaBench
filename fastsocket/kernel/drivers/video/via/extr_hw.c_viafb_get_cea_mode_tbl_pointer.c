
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct VideoModeTable {int ModeIndex; } ;


 struct VideoModeTable* CEA_HDMI_Modes ;
 struct VideoModeTable* CLE266Modes ;
 int NUM_TOTAL_CEA_MODES ;
 int NUM_TOTAL_MODETABLE ;

struct VideoModeTable *viafb_get_cea_mode_tbl_pointer(int Index)
{
 struct VideoModeTable *TmpTbl = ((void*)0);
 int i = 0;
 while ((i < NUM_TOTAL_CEA_MODES) &&
   (Index != CEA_HDMI_Modes[i].ModeIndex))
  i++;
 if ((i < NUM_TOTAL_CEA_MODES))
  TmpTbl = &CEA_HDMI_Modes[i];
  else {

  i = 0;
  while ((i < NUM_TOTAL_MODETABLE) &&
    (Index != CLE266Modes[i].ModeIndex))
         i++;
  if (i >= NUM_TOTAL_MODETABLE)
   i = 0;
  TmpTbl = &CLE266Modes[i];
 }
 return TmpTbl;
}
