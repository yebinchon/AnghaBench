
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int media_state; } ;


 int NDIS_MEDIA_STATE_DISCONNECTED ;
 int RNDIS_STATUS_MEDIA_DISCONNECT ;
 int rndis_indicate_status_msg (int,int ) ;
 TYPE_1__* rndis_per_dev_params ;

int rndis_signal_disconnect (int configNr)
{
 rndis_per_dev_params [configNr].media_state
   = NDIS_MEDIA_STATE_DISCONNECTED;
 return rndis_indicate_status_msg (configNr,
       RNDIS_STATUS_MEDIA_DISCONNECT);
}
