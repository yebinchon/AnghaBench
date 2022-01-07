
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int high; int low; } ;
struct TYPE_6__ {TYPE_1__ ssr; } ;
typedef TYPE_2__ IXJ ;


 int ixj_WriteDSPCommand (int,TYPE_2__*) ;

__attribute__((used)) static int get_rec_level(IXJ *j)
{
 int retval;

 ixj_WriteDSPCommand(0xCF88, j);

 retval = j->ssr.high << 8 | j->ssr.low;
 retval = (retval * 256) / 240;
 return retval;
}
