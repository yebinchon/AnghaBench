
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RFBI_CONTROL ;
 int rfbi_enable_clocks (int ) ;
 int rfbi_read_reg (int ) ;
 int rfbi_write_reg (int ,int) ;

__attribute__((used)) static inline void _stop_transfer(void)
{
 u32 w;

 w = rfbi_read_reg(RFBI_CONTROL);
 rfbi_write_reg(RFBI_CONTROL, w & ~(1 << 0));
 rfbi_enable_clocks(0);
}
