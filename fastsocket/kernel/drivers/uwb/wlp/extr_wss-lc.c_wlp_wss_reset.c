
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_wss {int state; scalar_t__ tag; int * master_key; int secure_status; int bcast; int * name; scalar_t__ hash; int wssid; } ;


 int WLP_WSS_STATE_NONE ;
 int WLP_WSS_UNSECURE ;
 int memset (int *,int ,int) ;

void wlp_wss_reset(struct wlp_wss *wss)
{
 memset(&wss->wssid, 0, sizeof(wss->wssid));
 wss->hash = 0;
 memset(&wss->name[0], 0, sizeof(wss->name));
 memset(&wss->bcast, 0, sizeof(wss->bcast));
 wss->secure_status = WLP_WSS_UNSECURE;
 memset(&wss->master_key[0], 0, sizeof(wss->master_key));
 wss->tag = 0;
 wss->state = WLP_WSS_STATE_NONE;
}
