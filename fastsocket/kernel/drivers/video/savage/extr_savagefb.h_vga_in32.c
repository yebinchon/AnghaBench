
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct savagefb_par {int dummy; } ;


 int savage_in32 (int,struct savagefb_par*) ;

__attribute__((used)) static inline u8 vga_in32(int addr, struct savagefb_par *par)
{
 return savage_in32(0x8000 + addr, par);
}
