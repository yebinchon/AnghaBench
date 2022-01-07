
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw_data {int dummy; } ;


 int MASK_CALIB_START ;
 int MASK_IQCAL_MODE ;
 int MASK_IQCAL_TONE_SEL ;
 int PHY_DEBUG (char*) ;
 int REG_MODE_CTRL ;
 int _rx_iq_calibration_winbond (struct hw_data*,int) ;
 int _rxadc_dc_offset_cancellation_winbond (struct hw_data*,int) ;
 int _tx_iq_calibration_winbond (struct hw_data*) ;
 int hw_get_cxx_reg (struct hw_data*,int,int *) ;
 int hw_get_dxx_reg (struct hw_data*,int,int*) ;
 int hw_set_cxx_reg (struct hw_data*,int,int ) ;
 int hw_set_dxx_reg (struct hw_data*,int,int) ;
 int mac_ctrl ;
 int phy_init_rf (struct hw_data*) ;
 int rf_ctrl ;

void phy_calibration_winbond(struct hw_data *phw_data, u32 frequency)
{
 u32 reg_mode_ctrl;
 u32 iq_alpha;

 PHY_DEBUG(("[CAL] -> phy_calibration_winbond()\n"));


 hw_get_cxx_reg(phw_data, 0x80, &mac_ctrl);
 hw_get_cxx_reg(phw_data, 0xE4, &rf_ctrl);
 hw_get_dxx_reg(phw_data, 0x58, &iq_alpha);



 _rxadc_dc_offset_cancellation_winbond(phw_data, frequency);



 _tx_iq_calibration_winbond(phw_data);
 _rx_iq_calibration_winbond(phw_data, frequency);


 hw_get_dxx_reg(phw_data, REG_MODE_CTRL, &reg_mode_ctrl);
 reg_mode_ctrl &= ~(MASK_IQCAL_TONE_SEL|MASK_IQCAL_MODE|MASK_CALIB_START);
 hw_set_dxx_reg(phw_data, REG_MODE_CTRL, reg_mode_ctrl);
 PHY_DEBUG(("[CAL]    MODE_CTRL (write) = 0x%08X\n", reg_mode_ctrl));


 hw_set_cxx_reg(phw_data, 0x80, mac_ctrl);
 hw_set_cxx_reg(phw_data, 0xE4, rf_ctrl);
 hw_set_dxx_reg(phw_data, 0x58, iq_alpha);



 phy_init_rf(phw_data);

}
