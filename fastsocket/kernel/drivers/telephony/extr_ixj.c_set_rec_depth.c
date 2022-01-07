
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXJ ;


 int ixj_WriteDSPCommand (int,int *) ;

__attribute__((used)) static void set_rec_depth(IXJ *j, int depth)
{
 if (depth > 60)
  depth = 60;
 if (depth < 0)
  depth = 0;
 ixj_WriteDSPCommand(0x5180 + depth, j);
}
