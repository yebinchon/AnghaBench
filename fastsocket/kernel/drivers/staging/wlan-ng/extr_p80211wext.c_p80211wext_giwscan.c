
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int wlandevice_t ;
typedef int u8 ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; scalar_t__ flags; } ;
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_8__ {int data; } ;
struct TYPE_10__ {TYPE_2__ resultcode; TYPE_1__ bssindex; int msgcode; } ;
typedef TYPE_3__ p80211msg_dot11req_scan_results_t ;
struct TYPE_11__ {int * ml_priv; } ;
typedef TYPE_4__ netdevice_t ;
typedef int msg ;


 int DIDmsg_dot11req_scan_results ;
 int IW_MAX_AP ;
 int IW_SCAN_MAX_DATA ;
 scalar_t__ P80211ENUM_resultcode_success ;
 int memset (TYPE_3__*,int ,int) ;
 int p80211req_dorequest (int *,int *) ;
 int prism2_result2err (scalar_t__) ;
 char* wext_translate_bss (struct iw_request_info*,char*,char*,TYPE_3__*) ;

__attribute__((used)) static int p80211wext_giwscan(netdevice_t *dev,
         struct iw_request_info *info,
         struct iw_point *srq, char *extra)
{
 wlandevice_t *wlandev = dev->ml_priv;
 p80211msg_dot11req_scan_results_t msg;
 int result = 0;
 int err = 0;
 int i = 0;
 int scan_good = 0;
 char *current_ev = extra;





 do {
  memset(&msg, 0, sizeof(msg));
  msg.msgcode = DIDmsg_dot11req_scan_results;
  msg.bssindex.data = i;

  result = p80211req_dorequest(wlandev, (u8 *) & msg);
  if ((result != 0) ||
      (msg.resultcode.data != P80211ENUM_resultcode_success)) {
   break;
  }

  current_ev =
      wext_translate_bss(info, current_ev,
           extra + IW_SCAN_MAX_DATA, &msg);
  scan_good = 1;
  i++;
 } while (i < IW_MAX_AP);

 srq->length = (current_ev - extra);
 srq->flags = 0;

 if (result && !scan_good)
  err = prism2_result2err(msg.resultcode.data);

 return err;
}
