
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct SiS_Private {int SiS_UseWide; TYPE_3__* SiS_RefIndex; TYPE_2__* SiS_CRT1Table; TYPE_1__* SiS_EModeIDTable; } ;
struct TYPE_6__ {int Ext_InfoFlag; unsigned short Ext_CRT1CRTC_WIDE; unsigned short Ext_CRT1CRTC_NORM; unsigned short Ext_CRT1CRTC; } ;
struct TYPE_5__ {unsigned char* CR; } ;
struct TYPE_4__ {unsigned short REFindex; } ;


 int HaveWideTiming ;
 int InterlaceMode ;
 int SiSInitPtr (struct SiS_Private*) ;
 int SiS_SearchModeID (struct SiS_Private*,unsigned short*,unsigned short*) ;

bool
sisfb_gettotalfrommode(struct SiS_Private *SiS_Pr, unsigned char modeno, int *htotal,
   int *vtotal, unsigned char rateindex)
{
    unsigned short ModeNo = modeno;
    unsigned short ModeIdIndex = 0, CRT1Index = 0;
    unsigned short RRTI = 0;
    unsigned char sr_data, cr_data, cr_data2;

    if(!SiSInitPtr(SiS_Pr)) return 0;

    if(rateindex > 0) rateindex--;
    if(!(SiS_SearchModeID(SiS_Pr, &ModeNo, &ModeIdIndex))) return 0;

    RRTI = SiS_Pr->SiS_EModeIDTable[ModeIdIndex].REFindex;
    if(SiS_Pr->SiS_RefIndex[RRTI].Ext_InfoFlag & HaveWideTiming) {
       if(SiS_Pr->SiS_UseWide == 1) {

   CRT1Index = SiS_Pr->SiS_RefIndex[RRTI].Ext_CRT1CRTC_WIDE;
       } else {
   RRTI += rateindex;
   CRT1Index = SiS_Pr->SiS_RefIndex[RRTI].Ext_CRT1CRTC_NORM;
       }
    } else {
       RRTI += rateindex;
       CRT1Index = SiS_Pr->SiS_RefIndex[RRTI].Ext_CRT1CRTC;
    }

    sr_data = SiS_Pr->SiS_CRT1Table[CRT1Index].CR[14];
    cr_data = SiS_Pr->SiS_CRT1Table[CRT1Index].CR[0];
    *htotal = (((cr_data & 0xff) | ((unsigned short) (sr_data & 0x03) << 8)) + 5) * 8;

    sr_data = SiS_Pr->SiS_CRT1Table[CRT1Index].CR[13];
    cr_data = SiS_Pr->SiS_CRT1Table[CRT1Index].CR[6];
    cr_data2 = SiS_Pr->SiS_CRT1Table[CRT1Index].CR[7];
    *vtotal = ((cr_data & 0xFF) |
        ((unsigned short)(cr_data2 & 0x01) << 8) |
        ((unsigned short)(cr_data2 & 0x20) << 4) |
        ((unsigned short)(sr_data & 0x01) << 10)) + 2;

    if(SiS_Pr->SiS_RefIndex[RRTI].Ext_InfoFlag & InterlaceMode)
       *vtotal *= 2;

    return 1;
}
