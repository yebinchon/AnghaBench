
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isp1301 {int dummy; } ;


 int ISP1301_INTERRUPT_LATCH ;
 int isp1301_clear_bits (struct isp1301*,int ,int ) ;
 int isp1301_get_u8 (struct isp1301*,int ) ;

__attribute__((used)) static u8 isp1301_clear_latch(struct isp1301 *isp)
{
 u8 latch = isp1301_get_u8(isp, ISP1301_INTERRUPT_LATCH);
 isp1301_clear_bits(isp, ISP1301_INTERRUPT_LATCH, latch);
 return latch;
}
