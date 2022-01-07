
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int VideoMemorySize; } ;


 unsigned short MemoryInfoFlag ;
 unsigned short MemorySizeShift ;
 unsigned short SiS_GetModeFlag (struct SiS_Private*,unsigned short,unsigned short) ;

__attribute__((used)) static bool
SiS_CheckMemorySize(struct SiS_Private *SiS_Pr, unsigned short ModeNo,
  unsigned short ModeIdIndex)
{
   unsigned short AdapterMemSize = SiS_Pr->VideoMemorySize / (1024*1024);
   unsigned short modeflag = SiS_GetModeFlag(SiS_Pr, ModeNo, ModeIdIndex);
   unsigned short memorysize = ((modeflag & MemoryInfoFlag) >> MemorySizeShift) + 1;

   if(!AdapterMemSize) return 1;

   if(AdapterMemSize < memorysize) return 0;
   return 1;
}
