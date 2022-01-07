
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_VBInfo; int SiS_Part1Port; } ;


 int SetInSlaveMode ;
 unsigned short SiS_GetOffset (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ;
 int SiS_SetReg (int ,int,unsigned char) ;

__attribute__((used)) static void
SiS_SetCRT2Offset(struct SiS_Private *SiS_Pr, unsigned short ModeNo, unsigned short ModeIdIndex,
  unsigned short RRTI)
{
   unsigned short offset;
   unsigned char temp;

   if(SiS_Pr->SiS_VBInfo & SetInSlaveMode) return;

   offset = SiS_GetOffset(SiS_Pr,ModeNo,ModeIdIndex,RRTI);

   SiS_SetReg(SiS_Pr->SiS_Part1Port,0x07,(offset & 0xFF));
   SiS_SetReg(SiS_Pr->SiS_Part1Port,0x09,(offset >> 8));

   temp = (unsigned char)(((offset >> 3) & 0xFF) + 1);
   if(offset & 0x07) temp++;
   SiS_SetReg(SiS_Pr->SiS_Part1Port,0x03,temp);
}
