
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvidia_par {int PVIO; } ;


 int VGA_MIS_R ;
 int VGA_RD08 (int ,int ) ;

u8 NVReadMiscOut(struct nvidia_par *par)
{
 return (VGA_RD08(par->PVIO, VGA_MIS_R));
}
