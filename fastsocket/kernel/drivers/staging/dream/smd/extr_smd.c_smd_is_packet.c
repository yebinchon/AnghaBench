
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int smd_is_packet(int chn)
{
 if ((chn > 4) || (chn == 1))
  return 1;
 else
  return 0;
}
