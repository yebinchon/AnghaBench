
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tdfx_par {int dummy; } ;


 int CRT_D ;
 int CRT_I ;
 int mb () ;
 int vga_inb (struct tdfx_par*,int ) ;
 int vga_outb (struct tdfx_par*,int ,int ) ;

__attribute__((used)) static inline u8 crt_inb(struct tdfx_par *par, u32 idx)
{
 vga_outb(par, CRT_I, idx);
 mb();
 return vga_inb(par, CRT_D);
}
