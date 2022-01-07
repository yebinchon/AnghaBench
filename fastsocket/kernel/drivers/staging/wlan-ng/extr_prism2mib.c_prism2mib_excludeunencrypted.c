
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wlandevice_t ;
typedef int p80211msg_dot11req_mibset_t ;
typedef int mibrec_t ;
typedef int hfa384x_t ;


 int prism2mib_flag (int *,int,int *,int *,int *,void*) ;

__attribute__((used)) static int prism2mib_excludeunencrypted(mibrec_t *mib,
     int isget,
     wlandevice_t *wlandev,
     hfa384x_t *hw,
     p80211msg_dot11req_mibset_t *msg,
     void *data)
{
 int result;

 result = prism2mib_flag(mib, isget, wlandev, hw, msg, data);

 return result;
}
