
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSM_A2M_INT (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static inline void notify_other_smd(void)
{
 writel(1, MSM_A2M_INT(0));
}
