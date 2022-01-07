
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fb_info {int dummy; } ;


 int mm_write_ind (int ,int ,int,int) ;

__attribute__((used)) static void mm_write_xr(struct fb_info *p, u8 reg, u8 data)
{
 mm_write_ind(reg, data, 0x7ac, 0x7ad);
}
