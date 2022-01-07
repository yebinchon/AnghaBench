
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sca3000_state {int bpse; int lock; } ;


 int SCA3000_INT_MASK_ACTIVE_LOW ;
 int SCA3000_INT_MASK_PROT_MASK ;
 int SCA3000_MD_CTRL_PROT_MASK ;
 int SCA3000_MODE_PROT_MASK ;
 int SCA3000_OUT_CTRL_BUF_DIV_4 ;
 int SCA3000_OUT_CTRL_BUF_X_EN ;
 int SCA3000_OUT_CTRL_BUF_Y_EN ;
 int SCA3000_OUT_CTRL_BUF_Z_EN ;
 int SCA3000_OUT_CTRL_PROT_MASK ;
 int SCA3000_REG_ADDR_INT_MASK ;
 int SCA3000_REG_ADDR_INT_STATUS ;
 int SCA3000_REG_ADDR_MODE ;
 int SCA3000_REG_CTRL_SEL_MD_CTRL ;
 int SCA3000_REG_CTRL_SEL_OUT_CTRL ;
 int kfree (int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_read_ctrl_reg (struct sca3000_state*,int ,int**) ;
 int sca3000_read_data (struct sca3000_state*,int ,int**,int) ;
 int sca3000_write_ctrl_reg (struct sca3000_state*,int ,int) ;
 int sca3000_write_reg (struct sca3000_state*,int ,int) ;

__attribute__((used)) static int sca3000_clean_setup(struct sca3000_state *st)
{
 int ret;
 u8 *rx;

 mutex_lock(&st->lock);

 ret = sca3000_read_data(st, SCA3000_REG_ADDR_INT_STATUS, &rx, 1);
 if (ret)
  goto error_ret;
 kfree(rx);


 ret = sca3000_read_ctrl_reg(st,
        SCA3000_REG_CTRL_SEL_MD_CTRL,
        &rx);
 if (ret)
  goto error_ret;
 ret = sca3000_write_ctrl_reg(st,
         SCA3000_REG_CTRL_SEL_MD_CTRL,
         rx[1] & SCA3000_MD_CTRL_PROT_MASK);
 kfree(rx);
 if (ret)
  goto error_ret;


 sca3000_read_ctrl_reg(st,
         SCA3000_REG_CTRL_SEL_OUT_CTRL,
         &rx);


 ret = sca3000_write_ctrl_reg(st,
         SCA3000_REG_CTRL_SEL_OUT_CTRL,
         (rx[1] & SCA3000_OUT_CTRL_PROT_MASK)
         | SCA3000_OUT_CTRL_BUF_X_EN
         | SCA3000_OUT_CTRL_BUF_Y_EN
         | SCA3000_OUT_CTRL_BUF_Z_EN
         | SCA3000_OUT_CTRL_BUF_DIV_4);
 kfree(rx);

 if (ret)
  goto error_ret;

 ret = sca3000_read_data(st,
     SCA3000_REG_ADDR_INT_MASK,
     &rx, 1);
 if (ret)
  goto error_ret;
 ret = sca3000_write_reg(st,
    SCA3000_REG_ADDR_INT_MASK,
    (rx[1] & SCA3000_INT_MASK_PROT_MASK)
    | SCA3000_INT_MASK_ACTIVE_LOW);
 kfree(rx);
 if (ret)
  goto error_ret;



 ret = sca3000_read_data(st,
     SCA3000_REG_ADDR_MODE,
     &rx, 1);
 if (ret)
  goto error_ret;
 ret = sca3000_write_reg(st,
    SCA3000_REG_ADDR_MODE,
    (rx[1] & SCA3000_MODE_PROT_MASK));
 kfree(rx);
 st->bpse = 11;

error_ret:
 mutex_unlock(&st->lock);
 return ret;
}
