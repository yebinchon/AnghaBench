
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int fx_conv_pitch(int val)
{
 return (short)(val * 4096 / 1200);
}
