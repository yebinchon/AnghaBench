
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXJ ;


 int ixj_WriteDSPCommand (int,int *) ;

__attribute__((used)) static void ixj_vad(IXJ *j, int arg)
{
 if (arg)
  ixj_WriteDSPCommand(0x513F, j);
 else
  ixj_WriteDSPCommand(0x513E, j);
}
