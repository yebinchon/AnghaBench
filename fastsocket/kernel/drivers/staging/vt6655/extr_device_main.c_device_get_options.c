
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; int bbp_type; int long_retry; int short_retry; int channel_num; int data_rate; int frag_thresh; int rts_thresh; int int_works; int * nTxDescs; int nRxDescs1; int nRxDescs0; } ;
struct TYPE_4__ {TYPE_2__ sOpts; } ;
typedef TYPE_1__* PSDevice ;
typedef TYPE_2__* POPTIONS ;


 int BBP_TYPE_DEF ;
 int CHANNEL_DEF ;
 int DATA_RATE_DEF ;
 int DEVICE_FLAGS_80211h_MODE ;
 int DEVICE_FLAGS_DiversityANT ;
 int DEVICE_FLAGS_IP_ALIGN ;
 int DEVICE_FLAGS_OP_MODE ;
 int DEVICE_FLAGS_PREAMBLE_TYPE ;
 int FRAG_THRESH_DEF ;
 int INT_WORKS_DEF ;
 int LONG_RETRY_DEF ;
 int RTS_THRESH_DEF ;
 int RX_DESC_DEF0 ;
 int RX_DESC_DEF1 ;
 int SHORT_RETRY_DEF ;
 int TX_DESC_DEF0 ;
 int TX_DESC_DEF1 ;

__attribute__((used)) static void
device_get_options(PSDevice pDevice, int index, char* devname) {

    POPTIONS pOpts = &(pDevice->sOpts);
  pOpts->nRxDescs0=RX_DESC_DEF0;
  pOpts->nRxDescs1=RX_DESC_DEF1;
  pOpts->nTxDescs[0]=TX_DESC_DEF0;
  pOpts->nTxDescs[1]=TX_DESC_DEF1;
pOpts->flags|=DEVICE_FLAGS_IP_ALIGN;
  pOpts->int_works=INT_WORKS_DEF;
  pOpts->rts_thresh=RTS_THRESH_DEF;
  pOpts->frag_thresh=FRAG_THRESH_DEF;
  pOpts->data_rate=DATA_RATE_DEF;
  pOpts->channel_num=CHANNEL_DEF;

pOpts->flags|=DEVICE_FLAGS_PREAMBLE_TYPE;
pOpts->flags|=DEVICE_FLAGS_OP_MODE;

  pOpts->short_retry=SHORT_RETRY_DEF;
  pOpts->long_retry=LONG_RETRY_DEF;
  pOpts->bbp_type=BBP_TYPE_DEF;
pOpts->flags|=DEVICE_FLAGS_80211h_MODE;
pOpts->flags|=DEVICE_FLAGS_DiversityANT;


}
