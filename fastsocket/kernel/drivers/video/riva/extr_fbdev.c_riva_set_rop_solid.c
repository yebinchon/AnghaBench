
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* Rop; } ;
struct riva_par {TYPE_2__ riva; } ;
struct TYPE_3__ {int Rop3; } ;


 int NV_WR32 (int *,int ,int) ;
 int RIVA_FIFO_FREE (TYPE_2__,int ,int) ;
 int Rop ;
 int riva_set_pattern (struct riva_par*,int,int,int,int) ;

__attribute__((used)) static void
riva_set_rop_solid(struct riva_par *par, int rop)
{
 riva_set_pattern(par, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF);
        RIVA_FIFO_FREE(par->riva, Rop, 1);
        NV_WR32(&par->riva.Rop->Rop3, 0, rop);

}
