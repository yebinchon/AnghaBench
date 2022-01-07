
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct savagefb_par {int dummy; } ;


 int vga_out8 (int,int ,struct savagefb_par*) ;

__attribute__((used)) static inline void VGAwCR(u8 index, u8 val, struct savagefb_par *par)
{
 vga_out8(0x3d4, index, par);
 vga_out8(0x3d5, val, par);
}
