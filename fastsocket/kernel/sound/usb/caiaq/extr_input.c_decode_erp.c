
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEG180 ;
 unsigned char DEG270 ;
 int DEG360 ;
 int DEG90 ;
 int HIGH_PEAK ;
 int LOW_PEAK ;
 int abs (int) ;

__attribute__((used)) static unsigned int decode_erp(unsigned char a, unsigned char b)
{
 int weight_a, weight_b;
 int pos_a, pos_b;
 int ret;
 int range = HIGH_PEAK - LOW_PEAK;
 int mid_value = (HIGH_PEAK + LOW_PEAK) / 2;

 weight_b = abs(mid_value - a) - (range / 2 - 100) / 2;

 if (weight_b < 0)
  weight_b = 0;

 if (weight_b > 100)
  weight_b = 100;

 weight_a = 100 - weight_b;

 if (a < mid_value) {

  pos_b = b - LOW_PEAK + DEG270;
  if (pos_b >= DEG360)
   pos_b -= DEG360;
 } else

  pos_b = HIGH_PEAK - b + DEG90;


 if (b > mid_value)

  pos_a = a - LOW_PEAK;
 else

  pos_a = HIGH_PEAK - a + DEG180;



 ret = pos_a * weight_a + pos_b * weight_b;


 ret *= 10;
 ret /= DEG360;

 if (ret < 0)
  ret += 1000;

 if (ret >= 1000)
  ret -= 1000;

 return ret;
}
