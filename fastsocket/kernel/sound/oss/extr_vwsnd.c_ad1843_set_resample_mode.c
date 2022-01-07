
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lithium_t ;


 int ASSERT (int) ;
 int ad1843_ADLEN ;
 int ad1843_ADREN ;
 int ad1843_DA1EN ;
 int ad1843_DA2EN ;
 int ad1843_DRSFLT ;
 int ad1843_write_bits (int *,int *,int) ;
 int ad1843_write_multi (int *,int,int *,int,int *,int,int *,int,...) ;
 int li_read_ad1843_reg (int *,int) ;
 int li_write_ad1843_reg (int *,int,int) ;

__attribute__((used)) static void ad1843_set_resample_mode(lithium_t *lith, int onoff)
{

 int save_da1 = li_read_ad1843_reg(lith, 9);


 ad1843_write_multi(lith, 4,
      &ad1843_DA1EN, 0,
      &ad1843_DA2EN, 0,
      &ad1843_ADLEN, 0,
      &ad1843_ADREN, 0);


 ASSERT(onoff == 0 || onoff == 1);
 ad1843_write_bits(lith, &ad1843_DRSFLT, onoff);


 ad1843_write_multi(lith, 3,
      &ad1843_DA1EN, 1,
      &ad1843_ADLEN, 1,
      &ad1843_ADREN, 1);


 li_write_ad1843_reg(lith, 9, save_da1);
}
