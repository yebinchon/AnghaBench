
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct savagefb_par {int dummy; } ;


 int vga_out8 (int,int ,struct savagefb_par*) ;

__attribute__((used)) static inline void VGAwMISC(u8 value, struct savagefb_par *par)
{
 vga_out8(0x3c2, value, par);
}
