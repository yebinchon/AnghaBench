
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int cfg_action; int cfg_type; int cfg_size; int cfg_page; int cfg_offset; int value; int mask; } ;
typedef TYPE_1__ cmpk_query_cfg_t ;



__attribute__((used)) static void
cmpk_handle_query_config_rx(
 struct net_device *dev,
 u8* pmsg)
{
 cmpk_query_cfg_t rx_query_cfg;
 rx_query_cfg.cfg_action = (pmsg[4] & 0x80000000)>>31;
 rx_query_cfg.cfg_type = (pmsg[4] & 0x60) >> 5;
 rx_query_cfg.cfg_size = (pmsg[4] & 0x18) >> 3;
 rx_query_cfg.cfg_page = (pmsg[6] & 0x0F) >> 0;
 rx_query_cfg.cfg_offset = pmsg[7];
 rx_query_cfg.value = (pmsg[8] << 24) | (pmsg[9] << 16) |
          (pmsg[10] << 8) | (pmsg[11] << 0);
 rx_query_cfg.mask = (pmsg[12] << 24) | (pmsg[13] << 16) |
          (pmsg[14] << 8) | (pmsg[15] << 0);

}
