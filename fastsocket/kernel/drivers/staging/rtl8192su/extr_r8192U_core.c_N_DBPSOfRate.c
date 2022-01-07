
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



u16 N_DBPSOfRate(u16 DataRate)
{
  u16 N_DBPS = 24;

  switch(DataRate)
  {
  case 60:
   N_DBPS = 24;
   break;

  case 90:
   N_DBPS = 36;
   break;

  case 120:
   N_DBPS = 48;
   break;

  case 180:
   N_DBPS = 72;
   break;

  case 240:
   N_DBPS = 96;
   break;

  case 360:
   N_DBPS = 144;
   break;

  case 480:
   N_DBPS = 192;
   break;

  case 540:
   N_DBPS = 216;
   break;

  default:
   break;
  }

  return N_DBPS;
}
