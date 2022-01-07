
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int tx_type; int rx_filter; scalar_t__ flags; } ;
typedef enum hwtstamp_tx_types { ____Placeholder_hwtstamp_tx_types } hwtstamp_tx_types ;
typedef enum hwtstamp_rx_filters { ____Placeholder_hwtstamp_rx_filters } hwtstamp_rx_filters ;
typedef int cfg ;


 int EFAULT ;
 int EINVAL ;
 int ERANGE ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;

__attribute__((used)) static int net_hwtstamp_validate(struct ifreq *ifr)
{
 struct hwtstamp_config cfg;
 enum hwtstamp_tx_types tx_type;
 enum hwtstamp_rx_filters rx_filter;
 int tx_type_valid = 0;
 int rx_filter_valid = 0;

 if (copy_from_user(&cfg, ifr->ifr_data, sizeof(cfg)))
  return -EFAULT;

 if (cfg.flags)
  return -EINVAL;

 tx_type = cfg.tx_type;
 rx_filter = cfg.rx_filter;

 switch (tx_type) {
 case 130:
 case 129:
 case 128:
  tx_type_valid = 1;
  break;
 }

 switch (rx_filter) {
 case 144:
 case 145:
 case 131:
 case 142:
 case 141:
 case 143:
 case 134:
 case 133:
 case 135:
 case 137:
 case 136:
 case 138:
 case 139:
 case 132:
 case 140:
  rx_filter_valid = 1;
  break;
 }

 if (!tx_type_valid || !rx_filter_valid)
  return -ERANGE;

 return 0;
}
