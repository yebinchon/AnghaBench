
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int amp_val_replace_channels(unsigned int val, unsigned int chs)
{
 val &= ~(0x3U << 16);
 val |= chs << 16;
 return val;
}
