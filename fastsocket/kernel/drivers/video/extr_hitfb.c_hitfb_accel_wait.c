
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HD64461_GRCFGR ;
 int HD64461_GRCFGR_ACCSTATUS ;
 int fb_readw (int ) ;

__attribute__((used)) static inline void hitfb_accel_wait(void)
{
 while (fb_readw(HD64461_GRCFGR) & HD64461_GRCFGR_ACCSTATUS) ;
}
