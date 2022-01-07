
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_21__ {int decrypt_err; } ;
struct TYPE_23__ {scalar_t__ beacon; } ;
struct TYPE_22__ {scalar_t__ retries; scalar_t__ fragment; scalar_t__ misc; scalar_t__ nwid; int code; } ;
struct TYPE_20__ {int updated; int noise; int level; int qual; } ;
struct iw_statistics {TYPE_8__ miss; TYPE_7__ discard; TYPE_5__ qual; scalar_t__ status; } ;
struct TYPE_24__ {scalar_t__ msdstate; int (* mlmerequest ) (TYPE_9__*,int *) ;TYPE_6__ rx; struct iw_statistics wstats; } ;
typedef TYPE_9__ wlandevice_t ;
typedef int p80211msg_t ;
struct TYPE_19__ {int data; } ;
struct TYPE_18__ {int data; } ;
struct TYPE_17__ {int data; } ;
struct TYPE_16__ {int status; int data; } ;
struct TYPE_14__ {TYPE_4__ noise; TYPE_3__ level; TYPE_2__ link; TYPE_1__ dbm; int msgcode; } ;
typedef TYPE_10__ p80211msg_lnxreq_commsquality_t ;
struct TYPE_15__ {TYPE_9__* ml_priv; } ;
typedef TYPE_11__ netdevice_t ;


 int DIDmsg_lnxreq_commsquality ;
 int IW_QUAL_ALL_UPDATED ;
 int IW_QUAL_DBM ;
 int P80211ENUM_msgitem_status_data_ok ;
 int P80211ENUM_truth_true ;
 scalar_t__ WLAN_MSD_RUNNING ;
 int qual_as_percent (int ) ;
 int stub1 (TYPE_9__*,int *) ;

struct iw_statistics *p80211wext_get_wireless_stats(netdevice_t *dev)
{
 p80211msg_lnxreq_commsquality_t quality;
 wlandevice_t *wlandev = dev->ml_priv;
 struct iw_statistics *wstats = &wlandev->wstats;
 int retval;


 if ((wlandev == ((void*)0)) || (wlandev->msdstate != WLAN_MSD_RUNNING))
  return ((void*)0);


 wstats->status = 0;


 quality.msgcode = DIDmsg_lnxreq_commsquality;
 quality.dbm.data = P80211ENUM_truth_true;
 quality.dbm.status = P80211ENUM_msgitem_status_data_ok;


 if (wlandev->mlmerequest == ((void*)0))
  return ((void*)0);

 retval = wlandev->mlmerequest(wlandev, (p80211msg_t *) & quality);

 wstats->qual.qual = qual_as_percent(quality.link.data);
 wstats->qual.level = quality.level.data;
 wstats->qual.noise = quality.noise.data;

 wstats->qual.updated = IW_QUAL_ALL_UPDATED | IW_QUAL_DBM;
 wstats->discard.code = wlandev->rx.decrypt_err;
 wstats->discard.nwid = 0;
 wstats->discard.misc = 0;

 wstats->discard.fragment = 0;
 wstats->discard.retries = 0;
 wstats->miss.beacon = 0;

 return wstats;
}
