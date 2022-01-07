
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvidia_par {int PVIO; } ;


 int VGA_GFX_D ;
 int VGA_GFX_I ;
 int VGA_RD08 (int ,int ) ;
 int VGA_WR08 (int ,int ,int ) ;

u8 NVReadGr(struct nvidia_par *par, u8 index)
{
 VGA_WR08(par->PVIO, VGA_GFX_I, index);
 return (VGA_RD08(par->PVIO, VGA_GFX_D));
}
