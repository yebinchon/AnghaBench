
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_47__ TYPE_9__ ;
typedef struct TYPE_46__ TYPE_8__ ;
typedef struct TYPE_45__ TYPE_7__ ;
typedef struct TYPE_44__ TYPE_6__ ;
typedef struct TYPE_43__ TYPE_5__ ;
typedef struct TYPE_42__ TYPE_4__ ;
typedef struct TYPE_41__ TYPE_3__ ;
typedef struct TYPE_40__ TYPE_2__ ;
typedef struct TYPE_39__ TYPE_23__ ;
typedef struct TYPE_38__ TYPE_22__ ;
typedef struct TYPE_37__ TYPE_21__ ;
typedef struct TYPE_36__ TYPE_20__ ;
typedef struct TYPE_35__ TYPE_1__ ;
typedef struct TYPE_34__ TYPE_19__ ;
typedef struct TYPE_33__ TYPE_18__ ;
typedef struct TYPE_32__ TYPE_17__ ;
typedef struct TYPE_31__ TYPE_16__ ;
typedef struct TYPE_30__ TYPE_15__ ;
typedef struct TYPE_29__ TYPE_14__ ;
typedef struct TYPE_28__ TYPE_13__ ;
typedef struct TYPE_27__ TYPE_12__ ;
typedef struct TYPE_26__ TYPE_11__ ;
typedef struct TYPE_25__ TYPE_10__ ;


struct TYPE_45__ {int reg; } ;
struct TYPE_44__ {int reg; } ;
struct TYPE_43__ {int reg; } ;
struct TYPE_42__ {int reg; } ;
struct TYPE_41__ {int reg; } ;
struct TYPE_46__ {TYPE_7__ cr4; TYPE_6__ cr3; TYPE_5__ cr2; TYPE_4__ cr1; TYPE_3__ cr0; } ;
struct TYPE_47__ {TYPE_8__ SOP; } ;
struct TYPE_35__ {scalar_t__* CallerID; } ;
struct TYPE_40__ {TYPE_1__ CAO; } ;
struct TYPE_36__ {int* IMFilterCoeff_1; int* IMFilterCoeff_2; int* FRXFilterCoeff; int* FRRFilterCoeff; int* AXFilterCoeff; int* ARFilterCoeff; int* THFilterCoeff_1; int* THFilterCoeff_2; int* THFilterCoeff_3; int* RingerImpendance_1; int* RingerImpendance_2; int* LevelmeteringRinging; int* CallerID1stTone; int* CallerID2ndTone; int* Tone1Coeff; int* Tone2Coeff; } ;
struct TYPE_37__ {TYPE_20__ COP; } ;
struct TYPE_32__ {int reg; } ;
struct TYPE_30__ {int reg; } ;
struct TYPE_29__ {int reg; } ;
struct TYPE_28__ {int reg; } ;
struct TYPE_27__ {int reg; } ;
struct TYPE_26__ {int reg; } ;
struct TYPE_33__ {TYPE_17__ xr7; TYPE_15__ xr5; TYPE_14__ xr4; TYPE_13__ xr3; TYPE_12__ xr2; TYPE_11__ xr1; } ;
struct TYPE_34__ {TYPE_18__ XOP; } ;
struct TYPE_31__ {int reg; } ;
struct TYPE_25__ {int reg; } ;
struct TYPE_38__ {TYPE_21__ COP_REGS; TYPE_19__ XOP_REGS; TYPE_16__ XOP_xr6_W; TYPE_10__ XOP_xr0_W; TYPE_9__ SOP_REGS; TYPE_2__ CAO_REGS; } ;
struct TYPE_39__ {TYPE_22__ m_DAAShadowRegs; int daa_country; } ;
typedef TYPE_23__ IXJ ;


 int ALISDAA_CALLERID_SIZE ;
 int DAA_JAPAN ;

__attribute__((used)) static void DAA_Coeff_Japan(IXJ *j)
{
 int i;

 j->daa_country = DAA_JAPAN;


 for (i = 0; i < ALISDAA_CALLERID_SIZE; i++) {
  j->m_DAAShadowRegs.CAO_REGS.CAO.CallerID[i] = 0;
 }


 j->m_DAAShadowRegs.COP_REGS.COP.IMFilterCoeff_1[7] = 0x06;
 j->m_DAAShadowRegs.COP_REGS.COP.IMFilterCoeff_1[6] = 0xBD;
 j->m_DAAShadowRegs.COP_REGS.COP.IMFilterCoeff_1[5] = 0xE2;
 j->m_DAAShadowRegs.COP_REGS.COP.IMFilterCoeff_1[4] = 0x2D;
 j->m_DAAShadowRegs.COP_REGS.COP.IMFilterCoeff_1[3] = 0xBA;
 j->m_DAAShadowRegs.COP_REGS.COP.IMFilterCoeff_1[2] = 0xF9;
 j->m_DAAShadowRegs.COP_REGS.COP.IMFilterCoeff_1[1] = 0xA0;
 j->m_DAAShadowRegs.COP_REGS.COP.IMFilterCoeff_1[0] = 0x00;

 j->m_DAAShadowRegs.COP_REGS.COP.IMFilterCoeff_2[7] = 0x6F;
 j->m_DAAShadowRegs.COP_REGS.COP.IMFilterCoeff_2[6] = 0xF7;
 j->m_DAAShadowRegs.COP_REGS.COP.IMFilterCoeff_2[5] = 0x00;
 j->m_DAAShadowRegs.COP_REGS.COP.IMFilterCoeff_2[4] = 0x0E;
 j->m_DAAShadowRegs.COP_REGS.COP.IMFilterCoeff_2[3] = 0x34;
 j->m_DAAShadowRegs.COP_REGS.COP.IMFilterCoeff_2[2] = 0x33;
 j->m_DAAShadowRegs.COP_REGS.COP.IMFilterCoeff_2[1] = 0xE0;
 j->m_DAAShadowRegs.COP_REGS.COP.IMFilterCoeff_2[0] = 0x08;

 j->m_DAAShadowRegs.COP_REGS.COP.FRXFilterCoeff[7] = 0x02;
 j->m_DAAShadowRegs.COP_REGS.COP.FRXFilterCoeff[6] = 0x8F;
 j->m_DAAShadowRegs.COP_REGS.COP.FRXFilterCoeff[5] = 0x68;
 j->m_DAAShadowRegs.COP_REGS.COP.FRXFilterCoeff[4] = 0x77;
 j->m_DAAShadowRegs.COP_REGS.COP.FRXFilterCoeff[3] = 0x9C;
 j->m_DAAShadowRegs.COP_REGS.COP.FRXFilterCoeff[2] = 0x58;
 j->m_DAAShadowRegs.COP_REGS.COP.FRXFilterCoeff[1] = 0xF0;
 j->m_DAAShadowRegs.COP_REGS.COP.FRXFilterCoeff[0] = 0x08;

 j->m_DAAShadowRegs.COP_REGS.COP.FRRFilterCoeff[7] = 0x03;
 j->m_DAAShadowRegs.COP_REGS.COP.FRRFilterCoeff[6] = 0x8F;
 j->m_DAAShadowRegs.COP_REGS.COP.FRRFilterCoeff[5] = 0x38;
 j->m_DAAShadowRegs.COP_REGS.COP.FRRFilterCoeff[4] = 0x73;
 j->m_DAAShadowRegs.COP_REGS.COP.FRRFilterCoeff[3] = 0x87;
 j->m_DAAShadowRegs.COP_REGS.COP.FRRFilterCoeff[2] = 0xEA;
 j->m_DAAShadowRegs.COP_REGS.COP.FRRFilterCoeff[1] = 0x20;
 j->m_DAAShadowRegs.COP_REGS.COP.FRRFilterCoeff[0] = 0x08;

 j->m_DAAShadowRegs.COP_REGS.COP.AXFilterCoeff[3] = 0x51;
 j->m_DAAShadowRegs.COP_REGS.COP.AXFilterCoeff[2] = 0xC5;
 j->m_DAAShadowRegs.COP_REGS.COP.AXFilterCoeff[1] = 0xDD;
 j->m_DAAShadowRegs.COP_REGS.COP.AXFilterCoeff[0] = 0xCA;

 j->m_DAAShadowRegs.COP_REGS.COP.ARFilterCoeff[3] = 0x25;
 j->m_DAAShadowRegs.COP_REGS.COP.ARFilterCoeff[2] = 0xA7;
 j->m_DAAShadowRegs.COP_REGS.COP.ARFilterCoeff[1] = 0x10;
 j->m_DAAShadowRegs.COP_REGS.COP.ARFilterCoeff[0] = 0xD6;

 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_1[7] = 0x00;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_1[6] = 0x42;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_1[5] = 0x48;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_1[4] = 0x81;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_1[3] = 0xAE;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_1[2] = 0x80;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_1[1] = 0x00;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_1[0] = 0x98;

 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_2[7] = 0x02;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_2[6] = 0xAB;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_2[5] = 0x2A;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_2[4] = 0x20;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_2[3] = 0x99;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_2[2] = 0x5B;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_2[1] = 0x89;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_2[0] = 0x28;

 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_3[7] = 0x00;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_3[6] = 0x88;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_3[5] = 0xDA;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_3[4] = 0x25;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_3[3] = 0x34;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_3[2] = 0xC5;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_3[1] = 0x4C;
 j->m_DAAShadowRegs.COP_REGS.COP.THFilterCoeff_3[0] = 0xBA;


 j->m_DAAShadowRegs.COP_REGS.COP.RingerImpendance_1[7] = 0x1B;
 j->m_DAAShadowRegs.COP_REGS.COP.RingerImpendance_1[6] = 0x3C;
 j->m_DAAShadowRegs.COP_REGS.COP.RingerImpendance_1[5] = 0x93;
 j->m_DAAShadowRegs.COP_REGS.COP.RingerImpendance_1[4] = 0x3A;
 j->m_DAAShadowRegs.COP_REGS.COP.RingerImpendance_1[3] = 0x22;
 j->m_DAAShadowRegs.COP_REGS.COP.RingerImpendance_1[2] = 0x12;
 j->m_DAAShadowRegs.COP_REGS.COP.RingerImpendance_1[1] = 0xA3;
 j->m_DAAShadowRegs.COP_REGS.COP.RingerImpendance_1[0] = 0x23;

 j->m_DAAShadowRegs.COP_REGS.COP.RingerImpendance_2[7] = 0x12;
 j->m_DAAShadowRegs.COP_REGS.COP.RingerImpendance_2[6] = 0xA2;
 j->m_DAAShadowRegs.COP_REGS.COP.RingerImpendance_2[5] = 0xA6;
 j->m_DAAShadowRegs.COP_REGS.COP.RingerImpendance_2[4] = 0xBA;
 j->m_DAAShadowRegs.COP_REGS.COP.RingerImpendance_2[3] = 0x22;
 j->m_DAAShadowRegs.COP_REGS.COP.RingerImpendance_2[2] = 0x7A;
 j->m_DAAShadowRegs.COP_REGS.COP.RingerImpendance_2[1] = 0x0A;
 j->m_DAAShadowRegs.COP_REGS.COP.RingerImpendance_2[0] = 0xD5;

 j->m_DAAShadowRegs.COP_REGS.COP.LevelmeteringRinging[3] = 0xAA;
 j->m_DAAShadowRegs.COP_REGS.COP.LevelmeteringRinging[2] = 0x35;
 j->m_DAAShadowRegs.COP_REGS.COP.LevelmeteringRinging[1] = 0x0F;
 j->m_DAAShadowRegs.COP_REGS.COP.LevelmeteringRinging[0] = 0x8E;

 j->m_DAAShadowRegs.COP_REGS.COP.CallerID1stTone[7] = 0xCA;
 j->m_DAAShadowRegs.COP_REGS.COP.CallerID1stTone[6] = 0x0E;
 j->m_DAAShadowRegs.COP_REGS.COP.CallerID1stTone[5] = 0xCA;
 j->m_DAAShadowRegs.COP_REGS.COP.CallerID1stTone[4] = 0x09;
 j->m_DAAShadowRegs.COP_REGS.COP.CallerID1stTone[3] = 0x99;
 j->m_DAAShadowRegs.COP_REGS.COP.CallerID1stTone[2] = 0x99;
 j->m_DAAShadowRegs.COP_REGS.COP.CallerID1stTone[1] = 0x99;
 j->m_DAAShadowRegs.COP_REGS.COP.CallerID1stTone[0] = 0x99;

 j->m_DAAShadowRegs.COP_REGS.COP.CallerID2ndTone[7] = 0xFD;
 j->m_DAAShadowRegs.COP_REGS.COP.CallerID2ndTone[6] = 0xB5;
 j->m_DAAShadowRegs.COP_REGS.COP.CallerID2ndTone[5] = 0xBA;
 j->m_DAAShadowRegs.COP_REGS.COP.CallerID2ndTone[4] = 0x07;
 j->m_DAAShadowRegs.COP_REGS.COP.CallerID2ndTone[3] = 0xDA;
 j->m_DAAShadowRegs.COP_REGS.COP.CallerID2ndTone[2] = 0x00;
 j->m_DAAShadowRegs.COP_REGS.COP.CallerID2ndTone[1] = 0x00;
 j->m_DAAShadowRegs.COP_REGS.COP.CallerID2ndTone[0] = 0x00;


 j->m_DAAShadowRegs.SOP_REGS.SOP.cr0.reg = 0xFF;

 j->m_DAAShadowRegs.SOP_REGS.SOP.cr1.reg = 0x05;

 j->m_DAAShadowRegs.SOP_REGS.SOP.cr2.reg = 0x04;

 j->m_DAAShadowRegs.SOP_REGS.SOP.cr3.reg = 0x00;

 j->m_DAAShadowRegs.SOP_REGS.SOP.cr4.reg = 0x02;






 j->m_DAAShadowRegs.XOP_xr0_W.reg = 0x02;


 j->m_DAAShadowRegs.XOP_REGS.XOP.xr1.reg = 0x1C;


 j->m_DAAShadowRegs.XOP_REGS.XOP.xr2.reg = 0x7D;

 j->m_DAAShadowRegs.XOP_REGS.XOP.xr3.reg = 0x22;

 j->m_DAAShadowRegs.XOP_REGS.XOP.xr4.reg = 0x00;

 j->m_DAAShadowRegs.XOP_REGS.XOP.xr5.reg = 0x22;

 j->m_DAAShadowRegs.XOP_xr6_W.reg = 0x00;

 j->m_DAAShadowRegs.XOP_REGS.XOP.xr7.reg = 0x40;





 j->m_DAAShadowRegs.COP_REGS.COP.Tone1Coeff[3] = 0x11;
 j->m_DAAShadowRegs.COP_REGS.COP.Tone1Coeff[2] = 0xB3;
 j->m_DAAShadowRegs.COP_REGS.COP.Tone1Coeff[1] = 0x5A;
 j->m_DAAShadowRegs.COP_REGS.COP.Tone1Coeff[0] = 0x2C;




 j->m_DAAShadowRegs.COP_REGS.COP.Tone2Coeff[3] = 0x32;
 j->m_DAAShadowRegs.COP_REGS.COP.Tone2Coeff[2] = 0x32;
 j->m_DAAShadowRegs.COP_REGS.COP.Tone2Coeff[1] = 0x52;
 j->m_DAAShadowRegs.COP_REGS.COP.Tone2Coeff[0] = 0xB3;
}
