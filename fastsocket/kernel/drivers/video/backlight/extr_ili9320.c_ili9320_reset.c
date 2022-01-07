
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ili9320_platdata {int (* reset ) (int) ;} ;
struct ili9320 {struct ili9320_platdata* platdata; } ;


 int mdelay (int) ;
 int stub1 (int) ;
 int stub2 (int) ;
 int stub3 (int) ;

__attribute__((used)) static void ili9320_reset(struct ili9320 *lcd)
{
 struct ili9320_platdata *cfg = lcd->platdata;

 cfg->reset(1);
 mdelay(50);

 cfg->reset(0);
 mdelay(50);

 cfg->reset(1);
 mdelay(100);
}
