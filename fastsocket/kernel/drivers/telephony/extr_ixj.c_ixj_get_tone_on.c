
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXJ ;


 scalar_t__ ixj_WriteDSPCommand (int,int *) ;

__attribute__((used)) static int ixj_get_tone_on(IXJ *j)
{
 if (ixj_WriteDSPCommand(0x6E06, j))

  return -1;
 return 0;
}
