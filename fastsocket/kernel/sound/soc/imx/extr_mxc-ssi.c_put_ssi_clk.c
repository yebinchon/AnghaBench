
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_put (int *) ;
 int * ssi_clk0 ;
 int * ssi_clk1 ;

void put_ssi_clk(int ssi)
{
 switch (ssi) {
 case 0:
  clk_put(ssi_clk0);
  ssi_clk0 = ((void*)0);
  break;
 case 1:
  clk_put(ssi_clk1);
  ssi_clk1 = ((void*)0);
  break;
 }
}
