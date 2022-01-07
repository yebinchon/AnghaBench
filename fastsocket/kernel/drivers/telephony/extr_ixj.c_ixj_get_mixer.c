
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* vol; } ;
struct TYPE_5__ {TYPE_1__ mix; } ;
typedef TYPE_2__ IXJ ;



__attribute__((used)) static int ixj_get_mixer(long val, IXJ *j)
{
 int reg = (val & 0x1F00) >> 8;
        return j->mix.vol[reg];
}
