
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int qual_as_percent(int snr)
{
 if (snr <= 0)
  return 0;
 if (snr <= 40)
  return snr * 5 / 2;
 return 100;
}
