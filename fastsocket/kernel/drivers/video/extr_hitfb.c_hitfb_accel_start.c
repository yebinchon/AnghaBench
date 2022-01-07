
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HD64461_GRCFGR ;
 int fb_writew (int,int ) ;

__attribute__((used)) static inline void hitfb_accel_start(int truecolor)
{
 if (truecolor) {
  fb_writew(6, HD64461_GRCFGR);
 } else {
  fb_writew(7, HD64461_GRCFGR);
 }
}
