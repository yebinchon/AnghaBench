
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct hw_data {int txvga_setting_for_cal; int revision; } ;
typedef int s32 ;


 int PHY_DEBUG (char*) ;
 int _reset_rx_cal (struct hw_data*) ;
 scalar_t__ _rx_iq_calibration_loop_winbond (struct hw_data*,int,int) ;
 int _s4_to_s32 (int) ;
 int _s5_to_s32 (int) ;
 int _s6_to_s32 (int) ;
 int hw_get_dxx_reg (struct hw_data*,int,int*) ;
 int phy_set_rf_data (struct hw_data*,int,int) ;

void _rx_iq_calibration_winbond(struct hw_data *phw_data, u32 frequency)
{






 u8 result;

 PHY_DEBUG(("[CAL] -> [5]_rx_iq_calibration()\n"));



 phy_set_rf_data(phw_data, 1, (1<<24)|0xEFBFC2);

 phy_set_rf_data(phw_data, 11, (11<<24)|0x1A05D6);

 phy_set_rf_data(phw_data, 5, (5<<24)| phw_data->txvga_setting_for_cal);

 phy_set_rf_data(phw_data, 6, (6<<24)|0x06834C);

 phy_set_rf_data(phw_data, 0, (0<<24)|0xFFF1C0);





 result = _rx_iq_calibration_loop_winbond(phw_data, 12589, frequency);

 if (result > 0)
 {
  _reset_rx_cal(phw_data);
  result = _rx_iq_calibration_loop_winbond(phw_data, 7943, frequency);

  if (result > 0)
  {
   _reset_rx_cal(phw_data);
   result = _rx_iq_calibration_loop_winbond(phw_data, 5011, frequency);

   if (result > 0)
   {
    PHY_DEBUG(("[CAL] ** <_rx_iq_calibration> **************\n"));
    PHY_DEBUG(("[CAL] ** RX_IQ_CALIBRATION FAILURE !!\n"));
    PHY_DEBUG(("[CAL] **************************************\n"));
    _reset_rx_cal(phw_data);
   }
  }
 }
}
