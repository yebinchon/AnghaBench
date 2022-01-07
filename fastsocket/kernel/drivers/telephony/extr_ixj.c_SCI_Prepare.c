
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXJ ;


 int SCI_Control (int *,int ) ;
 int SCI_End ;
 int SCI_WaitLowSCI (int *) ;

__attribute__((used)) static int SCI_Prepare(IXJ *j)
{
 if (!SCI_Control(j, SCI_End))
  return 0;

 if (!SCI_WaitLowSCI(j))
  return 0;

 return 1;
}
