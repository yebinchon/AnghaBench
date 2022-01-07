
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sca3000_state {int dummy; } ;


 int SCA3000_REG_ADDR_CTRL_DATA ;
 int SCA3000_REG_ADDR_CTRL_SEL ;
 int __sca3000_unlock_reg_lock (struct sca3000_state*) ;
 int sca3000_read_data (struct sca3000_state*,int ,int **,int) ;
 int sca3000_reg_lock_on (struct sca3000_state*) ;
 int sca3000_write_reg (struct sca3000_state*,int ,int ) ;

__attribute__((used)) static int sca3000_read_ctrl_reg(struct sca3000_state *st,
     u8 ctrl_reg,
     u8 **rx_p)
{
 int ret;

 ret = sca3000_reg_lock_on(st);
 if (ret < 0)
  goto error_ret;
 if (ret) {
  ret = __sca3000_unlock_reg_lock(st);
  if (ret)
   goto error_ret;
 }

 ret = sca3000_write_reg(st, SCA3000_REG_ADDR_CTRL_SEL, ctrl_reg);
 if (ret)
  goto error_ret;
 ret = sca3000_read_data(st, SCA3000_REG_ADDR_CTRL_DATA, rx_p, 1);

error_ret:
 return ret;
}
