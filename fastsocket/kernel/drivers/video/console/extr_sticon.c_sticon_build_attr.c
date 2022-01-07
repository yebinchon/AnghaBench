
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vc_data {int dummy; } ;



__attribute__((used)) static u8 sticon_build_attr(struct vc_data *conp, u8 color, u8 intens,
       u8 blink, u8 underline, u8 reverse, u8 italic)
{
    u8 attr = ((color & 0x70) >> 1) | ((color & 7));

    if (reverse) {
 color = ((color >> 3) & 0x7) | ((color & 0x7) << 3);
    }

    return attr;
}
