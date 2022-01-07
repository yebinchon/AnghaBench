
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXJ ;


 int ixj_WriteDSPCommand (int,int *) ;

__attribute__((used)) static void ixj_testram(IXJ *j)
{
 ixj_WriteDSPCommand(0x3001, j);
}
