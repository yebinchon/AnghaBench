
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned get_usb_high_speed_rate(unsigned int rate)
{
 return ((rate << 10) + 62) / 125;
}
