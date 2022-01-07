
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXJ ;


 int ixj_WriteDSPCommand (int,int *) ;

__attribute__((used)) static void set_dtmf_prescale(IXJ *j, int volume)
{
 ixj_WriteDSPCommand(0xCF07, j);
 ixj_WriteDSPCommand(volume, j);
}
