
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int FifoEmptyCount; int * PGRAPH; TYPE_1__* Rop; } ;
struct TYPE_4__ {int FifoFree; } ;
typedef TYPE_2__ RIVA_HW_INST ;


 int NV_RD32 (int *,int ) ;

__attribute__((used)) static int nv3Busy
(
    RIVA_HW_INST *chip
)
{
    return ((NV_RD32(&chip->Rop->FifoFree, 0) < chip->FifoEmptyCount) ||
     NV_RD32(&chip->PGRAPH[0x000006B0/4], 0) & 0x01);
}
