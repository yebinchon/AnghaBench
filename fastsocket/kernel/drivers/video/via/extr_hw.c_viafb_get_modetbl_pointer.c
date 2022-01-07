
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct VideoModeTable {int dummy; } ;


 struct VideoModeTable* CLE266Modes ;
 size_t search_mode_setting (int) ;

struct VideoModeTable *viafb_get_modetbl_pointer(int Index)
{
 struct VideoModeTable *TmpTbl = ((void*)0);
 TmpTbl = &CLE266Modes[search_mode_setting(Index)];
 return TmpTbl;
}
