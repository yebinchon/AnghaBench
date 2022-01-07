
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1301 {int dummy; } ;


 int ISP1301_MODE_CONTROL_1 ;
 int MC1_DAT_SE0 ;
 int MC1_SUSPEND ;
 int isp1301_clear_bits (struct isp1301*,int ,int ) ;
 int isp1301_set_bits (struct isp1301*,int ,int ) ;

__attribute__((used)) static void power_up(struct isp1301 *isp)
{

 isp1301_clear_bits(isp, ISP1301_MODE_CONTROL_1, MC1_SUSPEND);




 isp1301_set_bits(isp, ISP1301_MODE_CONTROL_1, MC1_DAT_SE0);
}
