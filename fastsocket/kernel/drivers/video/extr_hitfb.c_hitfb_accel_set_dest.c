
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HD64461_BBTDHR ;
 int HD64461_BBTDSARH ;
 int HD64461_BBTDSARL ;
 int HD64461_BBTDWR ;
 int WIDTH ;
 int fb_writew (int,int ) ;

__attribute__((used)) static inline void hitfb_accel_set_dest(int truecolor, u16 dx, u16 dy,
     u16 width, u16 height)
{
 u32 saddr = WIDTH * dy + dx;
 if (truecolor)
  saddr <<= 1;

 fb_writew(width-1, HD64461_BBTDWR);
 fb_writew(height-1, HD64461_BBTDHR);

 fb_writew(saddr & 0xffff, HD64461_BBTDSARL);
 fb_writew(saddr >> 16, HD64461_BBTDSARH);

}
