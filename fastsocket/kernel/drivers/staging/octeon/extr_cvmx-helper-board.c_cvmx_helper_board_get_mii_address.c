
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int board_type; } ;
 int cvmx_dprintf (char*,int) ;
 TYPE_1__* cvmx_sysinfo_get () ;

int cvmx_helper_board_get_mii_address(int ipd_port)
{
 switch (cvmx_sysinfo_get()->board_type) {
 case 129:

  return -1;
 case 137:
 case 135:
 case 128:
 case 131:

  if ((ipd_port >= 16) && (ipd_port < 20))
   return ipd_port - 16;
  else
   return -1;
 case 133:
 case 143:
 case 134:
 case 147:
 case 148:
 case 146:




  if (ipd_port == 0)
   return 4;
  else if (ipd_port == 1)
   return 9;
  else
   return -1;
 case 132:

  if ((ipd_port >= 0) && (ipd_port < 4))
   return ipd_port;
  else if ((ipd_port >= 16) && (ipd_port < 20))
   return ipd_port - 16 + 4;
  else
   return -1;
 case 144:

  return -1;
 case 142:
 case 141:
 case 136:




  if ((ipd_port >= 0) && (ipd_port < 4))
   return ipd_port + 2;
  else
   return -1;
 case 140:
 case 139:
 case 138:




  if ((ipd_port >= 0) && (ipd_port < 4))
   return ipd_port + 1;
  else
   return -1;
 case 145:
  if (ipd_port == 2)
   return 4;
  else
   return -1;
 case 130:

  if ((ipd_port >= 16) && (ipd_port < 20))
   return ipd_port - 16 + 1;
  else
   return -1;
 case 149:




  return -1;
 }


 cvmx_dprintf
     ("cvmx_helper_board_get_mii_address: Unknown board type %d\n",
      cvmx_sysinfo_get()->board_type);
 return -1;
}
