
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfb_info {int dummy; } ;


 int cyber2000fb_writew (unsigned int,int,struct cfb_info*) ;

__attribute__((used)) static inline void
cyber2000_grphw(unsigned int reg, unsigned int val, struct cfb_info *cfb)
{
 cyber2000fb_writew((reg & 255) | val << 8, 0x3ce, cfb);
}
