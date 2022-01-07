
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxafb_info {int clk; } ;


 int clk_get_rate (int ) ;
 int do_div (unsigned long long,int) ;

__attribute__((used)) static inline unsigned int get_pcd(struct pxafb_info *fbi,
       unsigned int pixclock)
{
 unsigned long long pcd;




 pcd = (unsigned long long)(clk_get_rate(fbi->clk) / 10000);
 pcd *= pixclock;
 do_div(pcd, 100000000 * 2);


 return (unsigned int)pcd;
}
