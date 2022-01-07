
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm3_par {scalar_t__ v_regs; } ;
typedef scalar_t__ s32 ;


 int fb_writel (int ,scalar_t__) ;

__attribute__((used)) static inline void PM3_WRITE_REG(struct pm3_par *par, s32 off, u32 v)
{
 fb_writel(v, par->v_regs + off);
}
