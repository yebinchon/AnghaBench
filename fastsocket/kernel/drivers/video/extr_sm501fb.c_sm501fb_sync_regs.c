
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501fb_info {int regs; } ;


 int readl (int ) ;

__attribute__((used)) static inline void sm501fb_sync_regs(struct sm501fb_info *info)
{
 readl(info->regs);
}
