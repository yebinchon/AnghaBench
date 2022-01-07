
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int blockNo; int * inUse; int blockCRC; scalar_t__ state_out_pos; scalar_t__ numZ; scalar_t__ nblock; } ;
typedef int Int32 ;
typedef TYPE_1__ EState ;


 int BZ_INITIALISE_CRC (int ) ;
 int False ;

__attribute__((used)) static
void prepare_new_block ( EState* s )
{
   Int32 i;
   s->nblock = 0;
   s->numZ = 0;
   s->state_out_pos = 0;
   BZ_INITIALISE_CRC ( s->blockCRC );
   for (i = 0; i < 256; i++) s->inUse[i] = False;
   s->blockNo++;
}
