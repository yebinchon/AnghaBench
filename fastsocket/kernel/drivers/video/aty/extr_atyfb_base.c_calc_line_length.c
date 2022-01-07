
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atyfb_par {scalar_t__ ram_type; } ;


 int M64_HAS (int ) ;
 scalar_t__ SGRAM ;
 scalar_t__ WRAM ;
 int XL_MEM ;

__attribute__((used)) static u32 calc_line_length(struct atyfb_par *par, u32 vxres, u32 bpp)
{
 u32 line_length = vxres * bpp / 8;

 if (par->ram_type == SGRAM ||
     (!M64_HAS(XL_MEM) && par->ram_type == WRAM))
  line_length = (line_length + 63) & ~63;

 return line_length;
}
