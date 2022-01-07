
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mx3fb_data {scalar_t__ reg_base; } ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static u32 mx3fb_read_reg(struct mx3fb_data *mx3fb, unsigned long reg)
{
 return __raw_readl(mx3fb->reg_base + reg);
}
