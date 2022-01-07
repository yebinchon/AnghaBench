
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* Patt; } ;
struct riva_par {TYPE_2__ riva; } ;
struct TYPE_3__ {int * Monochrome; int Color1; int Color0; } ;


 int NV_WR32 (int *,int,int) ;
 int Patt ;
 int RIVA_FIFO_FREE (TYPE_2__,int ,int) ;

__attribute__((used)) static void
riva_set_pattern(struct riva_par *par, int clr0, int clr1, int pat0, int pat1)
{
 RIVA_FIFO_FREE(par->riva, Patt, 4);
 NV_WR32(&par->riva.Patt->Color0, 0, clr0);
 NV_WR32(&par->riva.Patt->Color1, 0, clr1);
 NV_WR32(par->riva.Patt->Monochrome, 0, pat0);
 NV_WR32(par->riva.Patt->Monochrome, 4, pat1);
}
