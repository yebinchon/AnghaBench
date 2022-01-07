
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvidia_par {int PDIO; } ;


 int VGA_PEL_D ;
 int VGA_RD08 (int ,int ) ;

u8 NVReadDacData(struct nvidia_par *par)
{
 return (VGA_RD08(par->PDIO, VGA_PEL_D));
}
