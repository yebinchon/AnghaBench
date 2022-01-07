
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __raw_readl (int *) ;

__attribute__((used)) static inline u32 hal2_read(u32 *reg)
{
 return __raw_readl(reg);
}
