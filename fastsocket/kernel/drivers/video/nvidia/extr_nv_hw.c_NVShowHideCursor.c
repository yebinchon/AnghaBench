
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvidia_par {scalar_t__ Architecture; int PRAMDAC; TYPE_1__* CurrentState; int PCIO; } ;
struct TYPE_2__ {int cursor1; } ;


 scalar_t__ NV_ARCH_40 ;
 int NV_RD32 (int ,int) ;
 int NV_WR32 (int ,int,int ) ;
 int VGA_WR08 (int ,int,int) ;

int NVShowHideCursor(struct nvidia_par *par, int ShowHide)
{
 int cur = par->CurrentState->cursor1;

 par->CurrentState->cursor1 = (par->CurrentState->cursor1 & 0xFE) |
     (ShowHide & 0x01);
 VGA_WR08(par->PCIO, 0x3D4, 0x31);
 VGA_WR08(par->PCIO, 0x3D5, par->CurrentState->cursor1);

 if (par->Architecture == NV_ARCH_40)
  NV_WR32(par->PRAMDAC, 0x0300, NV_RD32(par->PRAMDAC, 0x0300));

 return (cur & 0x01);
}
