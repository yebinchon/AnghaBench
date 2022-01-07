
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I2S_CLOCK_SPEED_18MHz ;
 int I2S_CLOCK_SPEED_45MHz ;
 int I2S_CLOCK_SPEED_49MHz ;
 int I2S_SF_CLOCK_SOURCE_18MHz ;
 int I2S_SF_CLOCK_SOURCE_45MHz ;
 int I2S_SF_CLOCK_SOURCE_49MHz ;
 int i2s_sf_mclkdiv (int,int*) ;
 scalar_t__ i2s_sf_sclkdiv (int,int*) ;

__attribute__((used)) static int clock_and_divisors(int mclk, int sclk, int rate, int *out)
{

 if (mclk % sclk)
  return -1;

 if (i2s_sf_sclkdiv(mclk / sclk, out))
  return -1;

 if (I2S_CLOCK_SPEED_18MHz % (rate * mclk) == 0) {
  if (!i2s_sf_mclkdiv(I2S_CLOCK_SPEED_18MHz / (rate * mclk), out)) {
   *out |= I2S_SF_CLOCK_SOURCE_18MHz;
   return 0;
  }
 }
 if (I2S_CLOCK_SPEED_45MHz % (rate * mclk) == 0) {
  if (!i2s_sf_mclkdiv(I2S_CLOCK_SPEED_45MHz / (rate * mclk), out)) {
   *out |= I2S_SF_CLOCK_SOURCE_45MHz;
   return 0;
  }
 }
 if (I2S_CLOCK_SPEED_49MHz % (rate * mclk) == 0) {
  if (!i2s_sf_mclkdiv(I2S_CLOCK_SPEED_49MHz / (rate * mclk), out)) {
   *out |= I2S_SF_CLOCK_SOURCE_49MHz;
   return 0;
  }
 }
 return -1;
}
