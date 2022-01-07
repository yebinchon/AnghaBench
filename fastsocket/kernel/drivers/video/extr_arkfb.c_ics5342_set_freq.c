
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct dac_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ mode; } ;


 TYPE_1__* DAC_PAR (struct dac_info*) ;
 scalar_t__ DAC_PSEUDO8_16 ;
 int EINVAL ;
 int dac_write_regs (struct dac_info*,int*,int) ;
 int ics5342_pll ;
 int ics5342_pll_pd4 ;
 int svga_compute_pll (int *,int ,int*,int*,int*,int ) ;

__attribute__((used)) static int ics5342_set_freq(struct dac_info *info, int channel, u32 freq)
{
 u16 m, n, r;


 int rv = svga_compute_pll((DAC_PAR(info)->mode == DAC_PSEUDO8_16)
      ? &ics5342_pll_pd4 : &ics5342_pll,
      freq, &m, &n, &r, 0);

 if (rv < 0) {
  return -EINVAL;
 } else {
  u8 code[6] = {4, 3, 5, m-2, 5, (n-2) | (r << 5)};
  dac_write_regs(info, code, 3);
  return 0;
 }
}
