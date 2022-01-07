
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct VT1636_DPA_SETTING {int PanelSizeID; } ;



__attribute__((used)) static int get_lvds_dpa_setting_index(int panel_size_id,
        struct VT1636_DPA_SETTING *p_vt1636_dpasetting_tbl,
          int tbl_size)
{
 int i;

 for (i = 0; i < tbl_size; i++) {
  if (panel_size_id == p_vt1636_dpasetting_tbl->PanelSizeID)
   return i;

  p_vt1636_dpasetting_tbl++;
 }

 return 0;
}
