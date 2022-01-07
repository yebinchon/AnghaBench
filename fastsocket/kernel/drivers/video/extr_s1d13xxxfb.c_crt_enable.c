
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s1d13xxxfb_par {int dummy; } ;


 int S1DREG_COM_DISP_MODE ;
 int s1d13xxxfb_readreg (struct s1d13xxxfb_par*,int ) ;
 int s1d13xxxfb_writereg (struct s1d13xxxfb_par*,int ,int) ;

__attribute__((used)) static inline void
crt_enable(struct s1d13xxxfb_par *par, int enable)
{
 u8 mode = s1d13xxxfb_readreg(par, S1DREG_COM_DISP_MODE);

 if (enable)
  mode |= 0x02;
 else
  mode &= ~0x02;

 s1d13xxxfb_writereg(par, S1DREG_COM_DISP_MODE, mode);
}
