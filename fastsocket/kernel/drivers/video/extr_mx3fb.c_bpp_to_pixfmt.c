
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int IPU_PIX_FMT_BGR24 ;
 int IPU_PIX_FMT_BGR32 ;
 int IPU_PIX_FMT_RGB565 ;

__attribute__((used)) static uint32_t bpp_to_pixfmt(int bpp)
{
 uint32_t pixfmt = 0;
 switch (bpp) {
 case 24:
  pixfmt = IPU_PIX_FMT_BGR24;
  break;
 case 32:
  pixfmt = IPU_PIX_FMT_BGR32;
  break;
 case 16:
  pixfmt = IPU_PIX_FMT_RGB565;
  break;
 }
 return pixfmt;
}
