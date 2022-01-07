
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tdfx_par {int dummy; } ;


 int SEQ_D ;
 int SEQ_I ;
 int vga_outb (struct tdfx_par*,int ,int ) ;
 int wmb () ;

__attribute__((used)) static inline void seq_outb(struct tdfx_par *par, u32 idx, u8 val)
{
 vga_outb(par, SEQ_I, idx);
 wmb();
 vga_outb(par, SEQ_D, val);
 wmb();
}
