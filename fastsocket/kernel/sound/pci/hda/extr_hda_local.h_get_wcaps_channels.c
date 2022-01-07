
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AC_WCAP_CHAN_CNT_EXT ;

__attribute__((used)) static inline unsigned int get_wcaps_channels(u32 wcaps)
{
 unsigned int chans;

 chans = (wcaps & AC_WCAP_CHAN_CNT_EXT) >> 13;
 chans = ((chans << 1) | 1) + 1;

 return chans;
}
