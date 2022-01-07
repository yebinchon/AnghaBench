
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct atyfb_par {int dummy; } ;


 int FIFO_STAT ;
 int aty_ld_le32 (int ,struct atyfb_par const*) ;

__attribute__((used)) static inline void wait_for_fifo(u16 entries, const struct atyfb_par *par)
{
 while ((aty_ld_le32(FIFO_STAT, par) & 0xffff) >
        ((u32) (0x8000 >> entries)));
}
