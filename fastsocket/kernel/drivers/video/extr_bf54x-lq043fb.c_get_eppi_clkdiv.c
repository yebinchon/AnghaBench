
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int get_sclk () ;

__attribute__((used)) static inline u16 get_eppi_clkdiv(u32 target_ppi_clk)
{
 u32 sclk = get_sclk();



 return (((sclk / target_ppi_clk) / 2) - 1);
}
