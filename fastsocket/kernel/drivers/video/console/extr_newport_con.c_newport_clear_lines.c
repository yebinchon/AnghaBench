
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int newport_clear_screen (int ,int,int,int,int) ;
 int topscan ;

__attribute__((used)) static inline void newport_clear_lines(int ystart, int yend, int ci)
{
 ystart = ((ystart << 4) + topscan) & 0x3ff;
 yend = ((yend << 4) + topscan + 15) & 0x3ff;
 newport_clear_screen(0, ystart, 1280 + 63, yend, ci);
}
