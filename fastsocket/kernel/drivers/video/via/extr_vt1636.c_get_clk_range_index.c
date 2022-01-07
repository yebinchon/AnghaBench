
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ DPA_CLK_100M ;
 scalar_t__ DPA_CLK_150M ;
 scalar_t__ DPA_CLK_30M ;
 scalar_t__ DPA_CLK_50M ;
 scalar_t__ DPA_CLK_70M ;
 int DPA_CLK_RANGE_100_150M ;
 int DPA_CLK_RANGE_150M ;
 int DPA_CLK_RANGE_30M ;
 int DPA_CLK_RANGE_30_50M ;
 int DPA_CLK_RANGE_50_70M ;
 int DPA_CLK_RANGE_70_100M ;

__attribute__((used)) static int get_clk_range_index(u32 Clk)
{
 if (Clk < DPA_CLK_30M)
  return DPA_CLK_RANGE_30M;
 else if (Clk < DPA_CLK_50M)
  return DPA_CLK_RANGE_30_50M;
 else if (Clk < DPA_CLK_70M)
  return DPA_CLK_RANGE_50_70M;
 else if (Clk < DPA_CLK_100M)
  return DPA_CLK_RANGE_70_100M;
 else if (Clk < DPA_CLK_150M)
  return DPA_CLK_RANGE_100_150M;
 else
  return DPA_CLK_RANGE_150M;
}
