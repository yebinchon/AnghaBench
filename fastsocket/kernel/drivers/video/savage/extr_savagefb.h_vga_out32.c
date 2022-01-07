
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct savagefb_par {int dummy; } ;


 int savage_out32 (int,int ,struct savagefb_par*) ;

__attribute__((used)) static inline void vga_out32(int addr, u32 val, struct savagefb_par *par)
{
 savage_out32(0x8000 + addr, val, par);
}
