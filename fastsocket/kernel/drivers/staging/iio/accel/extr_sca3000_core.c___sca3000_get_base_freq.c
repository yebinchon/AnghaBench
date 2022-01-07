
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sca3000_state {int dummy; } ;
struct sca3000_chip_info {int measurement_mode_freq; int option_mode_1_freq; int option_mode_2_freq; } ;





 int SCA3000_REG_ADDR_MODE ;
 int kfree (int*) ;
 int sca3000_read_data (struct sca3000_state*,int ,int**,int) ;

__attribute__((used)) static inline int __sca3000_get_base_freq(struct sca3000_state *st,
       const struct sca3000_chip_info *info,
       int *base_freq)
{
 int ret;
 u8 *rx;

 ret = sca3000_read_data(st, SCA3000_REG_ADDR_MODE, &rx, 1);
 if (ret)
  goto error_ret;
 switch (0x03 & rx[1]) {
 case 130:
  *base_freq = info->measurement_mode_freq;
  break;
 case 129:
  *base_freq = info->option_mode_1_freq;
  break;
 case 128:
  *base_freq = info->option_mode_2_freq;
  break;
 };
 kfree(rx);
error_ret:
 return ret;
}
