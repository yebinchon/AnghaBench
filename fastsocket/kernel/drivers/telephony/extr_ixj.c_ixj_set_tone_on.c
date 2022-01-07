
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned short tone_on_time; } ;
typedef TYPE_1__ IXJ ;


 scalar_t__ ixj_WriteDSPCommand (unsigned short,TYPE_1__*) ;

__attribute__((used)) static int ixj_set_tone_on(unsigned short arg, IXJ *j)
{
 j->tone_on_time = arg;

 if (ixj_WriteDSPCommand(0x6E04, j))

  return -1;

 if (ixj_WriteDSPCommand(arg, j))
  return -1;

 return 0;
}
