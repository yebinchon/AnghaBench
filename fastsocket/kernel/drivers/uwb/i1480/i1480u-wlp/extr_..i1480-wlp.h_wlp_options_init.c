
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int prid; } ;
struct wlp_options {TYPE_1__ def_tx_hdr; int mutex; } ;


 int UWB_ACK_INM ;
 int UWB_PHY_RATE_480 ;
 int cpu_to_le16 (int) ;
 int mutex_init (int *) ;
 int wlp_tx_hdr_set_ack_policy (TYPE_1__*,int ) ;
 int wlp_tx_hdr_set_phy_rate (TYPE_1__*,int ) ;
 int wlp_tx_hdr_set_rts_cts (TYPE_1__*,int) ;

__attribute__((used)) static inline
void wlp_options_init(struct wlp_options *options)
{
 mutex_init(&options->mutex);
 wlp_tx_hdr_set_ack_policy(&options->def_tx_hdr, UWB_ACK_INM);
 wlp_tx_hdr_set_rts_cts(&options->def_tx_hdr, 1);

 wlp_tx_hdr_set_phy_rate(&options->def_tx_hdr, UWB_PHY_RATE_480);

 options->def_tx_hdr.prid = cpu_to_le16(0x0000);

}
