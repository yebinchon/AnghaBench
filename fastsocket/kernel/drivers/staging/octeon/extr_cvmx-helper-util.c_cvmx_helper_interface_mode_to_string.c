
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cvmx_helper_interface_mode_t ;
const char *cvmx_helper_interface_mode_to_string(cvmx_helper_interface_mode_t
       mode)
{
 switch (mode) {
 case 137:
  return "DISABLED";
 case 131:
  return "RGMII";
 case 136:
  return "GMII";
 case 129:
  return "SPI";
 case 133:
  return "PCIE";
 case 128:
  return "XAUI";
 case 130:
  return "SGMII";
 case 132:
  return "PICMG";
 case 134:
  return "NPI";
 case 135:
  return "LOOP";
 }
 return "UNKNOWN";
}
