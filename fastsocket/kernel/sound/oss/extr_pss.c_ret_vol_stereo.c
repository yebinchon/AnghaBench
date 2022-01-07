
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int ret_vol_stereo(int left, int right)
{
 return ((right << 8) | left);
}
