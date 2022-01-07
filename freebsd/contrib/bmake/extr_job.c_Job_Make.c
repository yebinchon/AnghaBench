
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GNode ;


 int JobStart (int *,int ) ;

void
Job_Make(GNode *gn)
{
    (void)JobStart(gn, 0);
}
